include .env
include ../../../conf/mk/common.mk

ETCDCTL_BIN_PATH=/usr/local/bin/etcdctl
CONTAINERS=${ETCD_CONTAINER_NAME_NODE1} ${ETCD_CONTAINER_NAME_NODE2} ${ETCD_CONTAINER_NAME_NODE3}
ENDPOINTS_OPT=--endpoints="${ETCD_CLUSTER_ENDPOINTS}"
CACERT_OPT=--cacert="${ETCD_SSL_CERTS_PATH_CONTAINER}/ca.pem"
CERT_OPT=--cert="${ETCD_SSL_CERTS_PATH_CONTAINER}/${ETCD_CERT_PREFIX}.pem"
KEY_OPT=--key="${ETCD_SSL_CERTS_PATH_CONTAINER}/${ETCD_CERT_PREFIX}-key.pem"

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"
	@echo "    list_cluster_member      : 列出集群Member"
	@echo "    etcd_ip                  : 获取所有etcd容器ip"
	@echo "    ca                       : 生成 root ca"
	@echo "    peerca                   : 生成 peer ca"
	@echo "    req               		: 生成 etcd ca, 不区分场景"
	@echo "    client-req               : 生成 etcd client ca"
	@echo "    server-req               : 生成 etcd server ca"
	@echo "    peer-req                 : 生成 etcd peer ca"

test:
	@echo "test ..."

.PHONY: build start list_cluster_member etcd_ip ca peerca req client-req server-req peer-req

build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

list_cluster_member:
	${DOCKER_COMPOSE_EXEC} etcd1 \
	${ETCDCTL_BIN_PATH} ${ENDPOINTS_OPT} ${CACERT_OPT} ${CERT_OPT} ${KEY_OPT} \
	member list;

etcd_ip:
	@for name in $(CONTAINERS); do \
		echo "$${name} ip:" && ${DOCKER_SEARCH_IP} $${name}; \
	done

ca:
	mkdir -p certs
	${CFSSL_GENCERT_INITCA} config/ca-csr.json | ${CFSSL_JSON_BARE} certs/ca

req:
	echo "etcd req:";
	${CFSSL_GENCERT} \
		-ca certs/ca.pem \
		-ca-key certs/ca-key.pem \
		-config config/ca-config.json \
		-profile=etcd \
		config/etcd-csr.json | ${CFSSL_JSON_BARE} certs/etcd;

peerca:
	mkdir -p peer-certs
	${CFSSL_GENCERT_INITCA} config/ca-csr.json | ${CFSSL_JSON_BARE} peer-certs/ca

client-req:
	@for name in $(CONTAINERS); do \
		echo "$${name} client-req:"; \
		${CFSSL_GENCERT} \
			-ca certs/ca.pem \
			-ca-key certs/ca-key.pem \
			-config config/ca-config.json \
			-profile=client \
			config/etcd-csr.json | ${CFSSL_JSON_BARE} certs/$${name}-client; \
		echo "\n"; \
	done

server-req:
	@for name in $(CONTAINERS); do \
		echo "$${name} server-req:"; \
		${CFSSL_GENCERT} \
			-ca certs/ca.pem \
			-ca-key certs/ca-key.pem \
			-config config/ca-config.json \
			-profile=server \
			config/etcd-csr.json | ${CFSSL_JSON_BARE} certs/$${name}-server; \
		echo "\n"; \
	done

peer-req:
	@for name in $(CONTAINERS); do \
		echo "$${name} peer-req:"; \
		${CFSSL_GENCERT} \
			-ca peer-certs/ca.pem \
			-ca-key peer-certs/ca-key.pem \
			-config config/ca-config.json \
			-profile=peer \
			config/etcd-csr.json | ${CFSSL_JSON_BARE} peer-certs/$${name}-peer; \
		echo "\n"; \
	done