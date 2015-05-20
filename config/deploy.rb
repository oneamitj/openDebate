set :application, 'sneha'
set :repo_url, 'git@github.com:wannamit/openDebate.git'



# Default branch is :master
set :branch, ENV['BRANCH'] || proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
ask :branch, ENV['BRANCH'] || proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call if %w{production}.include?(ARGV.first)

# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/home/deploy/#{fetch(:application)}"

set :user, 'deploy'
set :ssh_options, {
  user: 'deploy',
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  port: 2020,
  auth_methods: %w(publickey)
}