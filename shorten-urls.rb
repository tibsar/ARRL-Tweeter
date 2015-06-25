require 'bitly'

#Accepts an array of full urls and uses Bit.ly to 
#shorten them
def shorten_urls(long_urls)
  username = "o_12nhcpioar"
  api_key = "R_0a4eb302e9784eeb9bd7aa217fc757a6"
  bitly = Bitly.new(username , api_key)
  short_urls = []
  long_urls.each do |url|
    u = bitly.shorten(url)
    short_urls << u.short_url
  end 
  short_urls
end 