require_relative 'environment.rb'

def main 
  title_url = scrape
  titles = check_length(title_url[0].compact)
  long_urls = title_url[1]
  short_urls = shorten_urls(long_urls)
  tweets = []
  titles.each do |title|
    tweets << "#{title} #{short_urls[titles.index(title)]}"
  end 
  new_tweets = check_new(tweets.compact)
  tweet(new_tweets)
  return "finished"
end 

main