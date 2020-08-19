require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'slack-ruby-client'


Slack.configure do |config|
  config.token = "xoxb-2551775506-1307095574436-K96UT6n6Bd13RWbrdrgV9aMq"
end

client = Slack::Web::Client.new

get '/' do
    "Hello World!"
end

# 実装途中
post '/webhook' do
  channel_id = params[:channel_id]
  command = params[:command]
  text = params[:text]
  case command
  when "/vim" then
    client.chat_postMessage(channel: '#x-test', text: 'Hello World', as_user: true)
  end
  
"good"
end
