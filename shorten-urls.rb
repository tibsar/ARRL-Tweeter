require 'bitly'

def shorten_urls(long_urls)
  username = "o_12nhcpioar"
  api_key = "R_0a4eb302e9784eeb9bd7aa217fc757a6"
  bitly = Bitly.new(username , api_key)
  short_urls = long_urls.collect{ |url| bitly.shorten(url).short_url}
  short_urls
end 