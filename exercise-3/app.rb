require 'redis'
require 'sinatra'

$client = Redis.new(host: 'redis', port: 6379)

def user
  call_external_client_very_costly
end

def call_external_client_very_costly
  sleep 5

  'world'
end

get '/' do
  "Hello #{user}"
end