require 'open-uri'
require 'nokogiri'



def scrapper(category)
  results = []
  url = "https://www.etsy.com/search?q=#{category}"
  file = open(url)
  html_text = file.read
  doc = Nokogiri::HTML(html_text)

  doc.search('.v2-listing-card').each do |element|
    results << element.search('.text-body')[0].text.strip
    # p element.search('.currency-value')[0].text
    # p element.search('img')[0]["src"]
  end
  return results
end
