include ../_common/.env
include ../_common/common.mk

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network      		: 初始化网络，所有项目使用同一个子网"
	@echo "    init_data_dir            : 初始化数据目录"

test:
	@echo "test ..."

.PHONY: build start
init_network:
	@echo ""

init_data_dir:
	@echo ""