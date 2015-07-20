require 'twitter'
require 'yaml'

 keys = YAML.load_file('application.yml')

 @client = Twitter::REST::Client.new do |config|
  config.consumer_key        = keys['CONSUMER_KEY']
  config.consumer_secret     = keys['CONSUMER_SECRET']
  config.access_token        = keys['ACCESS_TOKEN']
  config.access_token_secret = keys['ACCESS_TOKEN_SECRET']
end

def tweet(tweets)
  tweets.each do |tweet|
    if tweet != ""
      @client.update(tweet)
    end
  end 
  puts "#{tweets.length} tweets tweeted!"
end 

