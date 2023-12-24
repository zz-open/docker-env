MV=mv

# Docker ############################################################
DOCKER=/usr/bin/docker
DOCKER_INSPECT=${DOCKER} inspect
DOCKER_PUSH=${DOCKER} push
DOCKER_TAG=${DOCKER} tag

DOCKER_COMPOSE=/usr/local/bin/docker-compose
DOCKER_COMPOSE_EXEC=${DOCKER_COMPOSE} exec -it
DOCKER_COMPOSE_BUILD=${DOCKER_COMPOSE} build
DOCKER_COMPOSE_UP=${DOCKER_COMPOSE} up

DOCKER_SEARCH_IP=${DOCKER_INSPECT} -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{println}}{{end}}'

# cfssl ############################################################
CFSSL=cfssl
CFSSL_GENCERT=${CFSSL} gencert
CFSSL_GENCERT_INITCA=${CFSSL_GENCERT} -initca

CFSSL_JSON=cfssljson
CFSSL_JSON_BARE=${CFSSL_JSON} -bare

# Harbor ############################################################
HARBOR_HOST=zz.harbor.com
PRIVATE_HARBOR_PROJECT=zz