require 'sinatra'
require 'sinatra/reloader'
require 'pry'
 
get '/' do
    "Hello World!"
end

# 実装途中
post '/webhook' do
  channel_id = params[:channel_id]
  command = params[:command]
  test = "api_testtest"
end
