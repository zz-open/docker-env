# Docker ############################################################
DOCKER=$(shell command -v docker)
DOCKER_INSPECT=${DOCKER} inspect
DOCKER_PUSH=${DOCKER} push
DOCKER_TAG=${DOCKER} tag

DOCKER_COMPOSE=$(shell command -v docker-compose)
DOCKER_COMPOSE_EXEC=${DOCKER_COMPOSE} exec -it
DOCKER_COMPOSE_BUILD=${DOCKER_COMPOSE} build
DOCKER_COMPOSE_UP=${DOCKER_COMPOSE} up
DOCKER_COMPOSE_STOP=${DOCKER_COMPOSE} stop
DOCKER_COMPOSE_DOWN=${DOCKER_COMPOSE} down
DOCKER_COMPOSE_LOGS=${DOCKER_COMPOSE} logs

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

# Linux ############################################################
MV=mv
