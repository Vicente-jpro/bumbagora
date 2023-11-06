require 'resque/server'

if Rails.env.development?
    Resque.redis = Redis.new(host: '127.0.0.1', port: '6379')
else
   uri = URI.parse(ENV['REDIS_URL'])
   REDIS = Redis.new(host: uri.host, port: uri.port, password: uri.password)
   Resque.redis = REDIS
end
