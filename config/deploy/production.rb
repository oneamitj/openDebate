set :rails_env, (fetch(:rails_env) || fetch(:stage))

role :web, '184.72.2.117'
role :app, '184.72.2.117'

puts "\e[41m \e[1;37m #{fetch(:branch).upcase} in #{fetch(:rails_env).upcase} \e[0m \e[0m"
