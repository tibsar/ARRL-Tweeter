def read_tweets
  file = File.open("last-tweets.txt", "r")
  data = file.read.split("\n")
  file.close
  return data
end 

def write_tweets(new_tweets, last_tweets)
  file = File.open("last-tweets.txt", "w")
  all_tweets = []
  all_tweets << new_tweets 
  all_tweets << last_tweets 
  all_tweets.flatten!
  if all_tweets.size > 8 
    all_tweets.pop(all_tweets.size-8)
  end
  all_tweets.each do |tweet|
    file.write("#{tweet}\n")
  end 
   file.close
end 

def check_new(tweets)
  new_tweets = tweets
  last_tweets = read_tweets
  last_tweets.each do |tweet|
    if new_tweets.include?(tweet)
      new_tweets.delete(tweet)
      new_tweets.delete(" ")
    end 
  end 
  write_tweets(new_tweets, last_tweets)
  new_tweets
end 

