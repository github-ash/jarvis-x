
require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscription.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end
