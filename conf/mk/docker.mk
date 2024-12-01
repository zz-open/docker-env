# Docker ############################################################
DOCKER=docker
DOCKER_INSPECT=${DOCKER} inspect
DOCKER_PUSH=${DOCKER} push
DOCKER_TAG=${DOCKER} tag
DOCKER_SEARCH_IP=${DOCKER_INSPECT} -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{println}}{{end}}'

# Docker Compose ############################################################
# := 定义，方便后续覆盖
LOCAL_ENV_OVERRIDE := ${USE_LOCAL_ENV_OVERRIDE}

DOCKER_COMPOSE=docker compose
DOCKER_COMPOSE_EXEC=${DOCKER_COMPOSE} exec -it
DOCKER_COMPOSE_LOGS=${DOCKER_COMPOSE} logs
DOCKER_COMPOSE_STOP=${DOCKER_COMPOSE} stop
DOCKER_COMPOSE_DOWN=${DOCKER_COMPOSE} down
DOCKER_COMPOSE_BUILD=${DOCKER_COMPOSE} build
DOCKER_COMPOSE_UP=${DOCKER_COMPOSE} up -d
DOCKER_COMPOSE_RM=${DOCKER_COMPOSE} rm
DOCKER_COMPOSE_STOP=${DOCKER_COMPOSE} stop

DC=${DOCKER_COMPOSE}
DC_ENV_FILE=--env-file=.env
DC_COMMON_ENV_FILE=--env-file=${COMMON_ENV_FILE_PATH}
DC_COMMON_ENV_FILEOPTIONS=${DC_COMMON_ENV_FILE} ${DC_ENV_FILE}
DC_LOCAL_ENV_FILE=--env-file=.env.local
DC_OPTIONS=${DC} ${DC_COMMON_ENV_FILEOPTIONS}
DC_WITH_LOCAL_OPTIONS=${DC} ${DC_COMMON_ENV_FILEOPTIONS} ${DC_LOCAL_ENV_FILE}

# 命令别名
ALIAS_DCE=${DC_OPTIONS}
ALIAS_DCEL=${DC_WITH_LOCAL_OPTIONS}

# 公共 函数 ###########################################################
ifeq (${LOCAL_ENV_OVERRIDE}, true)
define FUNC_DC_PS
	${DC_WITH_LOCAL_OPTIONS} ps
endef

define FUNC_DC_CONFIG
	${DC_WITH_LOCAL_OPTIONS} config
endef

define FUNC_DC_LOGS
	${DC_WITH_LOCAL_OPTIONS} logs -f $(1)
endef

define FUNC_DC_BUILD
	${DC_WITH_LOCAL_OPTIONS} build $(1)
endef

define FUNC_DC_UP
	${DC_WITH_LOCAL_OPTIONS} up -d $(1)
endef

define FUNC_DC_STOP
	${DC_WITH_LOCAL_OPTIONS} stop $(1)
endef

define FUNC_DC_DOWN
	${DC_WITH_LOCAL_OPTIONS} down
endef

define FUNC_DC_RM
	${DC_WITH_LOCAL_OPTIONS} rm $(1)
endef

define FUNC_DC_EXEC
	${DC_WITH_LOCAL_OPTIONS} exec -it $(1) $(2) $(3)
endef

else
define FUNC_DC_PS
	${DC_OPTIONS} ps
endef

define FUNC_DC_CONFIG
	${DC_OPTIONS} config
endef

define FUNC_DC_DOWN
	${DC_OPTIONS} down
endef

define FUNC_DC_LOGS
	${DC_OPTIONS} logs -f $(1)
endef

define FUNC_DC_BUILD
	${DC_OPTIONS} build $(1)
endef

define FUNC_DC_UP
	${DC_OPTIONS} up -d $(1)
endef

define FUNC_DC_STOP
	${DC_OPTIONS} stop $(1)
endef

define FUNC_DC_RM
	${DC_OPTIONS} rm $(1)
endef

define FUNC_DC_EXEC
	${DC_OPTIONS} exec -it $(1) $(2) $(3)
endef

endif

# PHONY ############################################################
.PHONY: dc-ps dc-config dc-down print print-local
dc-ps:
	$(call FUNC_DC_PS)
dc-config:
	$(call FUNC_DC_CONFIG)
dc-down:
	$(call FUNC_DC_DOWN)