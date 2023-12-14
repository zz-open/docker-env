external_url 'http://zz.gitlab.com:8929'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")
gitlab_rails['gitlab_shell_ssh_port'] = 2224
gitlab_rails['time_zone'] = 'Asia/Shanghai'
gitlab_rails['gravatar_plain_url'] = 'http://sdn.geekzu.org/avatar/%{hash}?s=%{size}&d=identicon'
gitlab_rails['gravatar_ssl_url'] = 'https://sdn.geekzu.org/avatar/%{hash}?s=%{size}&d=identicon'

# gitlab_rails['store_initial_root_password'] = true        
# registry_external_url 'http://zz.gitlab.com'
# gitlab_rails['registry_enabled'] = true