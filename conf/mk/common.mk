COMMON_ROOT_DIR_PATH=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include ${COMMON_ROOT_DIR_PATH}base.mk
include ${COMMON_ROOT_DIR_PATH}docker.mk
include ${COMMON_ROOT_DIR_PATH}other.mk

# PHONY ############################################################
.PHONY: print
print:
	@echo "_COMMON_MKFILE_PATH:" ${_COMMON_MKFILE_PATH}
	@echo "_COMMON_MKFILE_DIR_PATH:" ${_COMMON_MKFILE_DIR_PATH}
	@echo "COMMON_ROOT_DIR_PATH:" ${COMMON_ROOT_DIR_PATH}
	@echo "COMMON_ENV_FILE_PATH:" ${COMMON_ENV_FILE_PATH}
	@echo "COMMON_MKFILE_PATH:" ${COMMON_MKFILE_PATH}
	@echo "DC_OPTIONS:" ${DC_OPTIONS}
	@echo "DC_WITH_LOCAL_OPTIONS:" ${DC_WITH_LOCAL_OPTIONS}