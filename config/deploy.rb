# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'sneha'
set :repo_url, 'git@github.com:wannamit/openDebate.git'

# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/home/deploy/#{fetch(:application)}"

set :user, 'deploy'
# set :runner, 'deploy'
# set :password, nil
# set :group, "deploy"
set :ssh_options, {
  user: 'deploy',
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  port: 2020,
  auth_methods: %w(publickey)#,
  # password: 'please use keys'
}

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
