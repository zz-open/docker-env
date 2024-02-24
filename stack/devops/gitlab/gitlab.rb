external_url 'http://zz.gitlab.com:8989'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")
gitlab_rails['gitlab_shell_ssh_port'] = 2224
gitlab_rails['time_zone'] = 'Asia/Shanghai'
gitlab_rails['gravatar_plain_url'] = 'http://sdn.geekzu.org/avatar/%{hash}?s=%{size}&d=identicon'
gitlab_rails['gravatar_ssl_url'] = 'https://sdn.geekzu.org/avatar/%{hash}?s=%{size}&d=identicon'

# gitlab_rails['store_initial_root_password'] = true        

# 内存和进程优化
puma['worker_processes'] = 2

# 使用外部redis
redis['enable'] = false
gitlab_rails['redis_host'] = 'redis-devops'
gitlab_rails['redis_database'] = 8
gitlab_rails['redis_port'] = 6379
gitlab_rails['redis_password'] = '123456'

# 使用外部postgre
postgresql['enable'] = false
postgresql['shared_buffers'] = "256MB"
gitlab_rails['db_host'] = 'postgres-devops'
gitlab_rails['db_username'] = 'docker_env_gitlab'
gitlab_rails['db_password'] = 'docker_env_gitlab'
gitlab_rails['db_database'] = 'docker_env_gitlab'

# 使用外部nginx
# nginx['listen_https'] = false
# nginx['listen_port'] = 80
# nginx['custom_gitlab_server_config'] = "set_real_ip_from 172.0.0.0/8;\nreal_ip_header X-Real-IP;\nreal_ip_recursive on;"
# gitlab_rails['trusted_proxies'] = ['caddy','nginx','apache2']

# docker
# registry_external_url 'http://zz.gitlab.com'
# gitlab_rails['registry_enabled'] = true

# Add any other gitlab.rb configuration here, each on its own line