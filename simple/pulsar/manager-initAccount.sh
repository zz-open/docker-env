#!/bin/sh

function InitAccount() {
    local name=admin
    local password=pulsar
    local email=373045134@qq.com
    # 初始化管理员账号
    CSRF_TOKEN=$(curl http://localhost:7750/pulsar-manager/csrf-token)

    curl \
        -H "X-XSRF-TOKEN: $CSRF_TOKEN" \
        -H "Cookie: XSRF-TOKEN=$CSRF_TOKEN;" \
        -H 'Content-Type: application/json' \
        -X PUT http://localhost:7750/pulsar-manager/users/superuser \
        -d '{"name": ${name}, "password": ${password}, "description": "dev", "email": ${email}}'
}

InitAccount