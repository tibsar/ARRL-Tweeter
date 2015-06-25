def check_length(tweets)
  bitly_length = 15
  to_size_tweets = []
  tweets.each do |tweet|
    if tweet.length >= (140- bitly_length)
      tweet.pop(tweet.length - (140 - bitly_length - 3))
      tweet += "... "
      to_size_tweets << tweet
    else
      to_size_tweets << tweet
    end
  end 
  to_size_tweets
end 