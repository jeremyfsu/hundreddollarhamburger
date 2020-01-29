pidfile '/tmp/puma.pid'
state_path '/tmp/puma.state'
workers 1
port 80
rails_env = ENV['RAILS_ENV'] || 'production'
