.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    push                     : 自动push代码"

test:
	@echo "test ..."

.PHONY: push
push:
	@echo "自动 push ..."
	@git add .
	@git commit -m "脚本自动push"
	@git push origin main