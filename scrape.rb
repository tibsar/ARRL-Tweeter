require 'open-uri'
require 'nokogiri'

def scrape 
  index = "http://www.arrl.org/news"
  html = open(index)
  news_page = Nokogiri::HTML(html)
  titles = []
  urls = []
  news_page.css("h3").each do |item|
    titles << item.css("a").text
    if titles[-1] != ""
      urls << "http://www.arrl.org/#{item.css("a").attribute("href")}"
    end
  end 
  return [titles, urls]
end 

