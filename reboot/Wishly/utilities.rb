def display(list)
  list.each_with_index do |item, index|
    if item[:checked]
    puts "#{index + 1} - #{item[:name]} |x|"
    else
      puts "#{index + 1} - #{item[:name]}"
    end
  end
end







def scrapper(category)
  require 'open-uri'
  require 'nokogiri'
  url = "https://www.etsy.com/search?q=#{category}"
  file = open(url)
  html_text = file.read
  doc = Nokogiri::HTML(html_text)

  doc.search('.v2-listing-card').each do |element|
    p element.search('.text-body')[0].text.strip
    p element.search('.currency-value')[0].text
  end
end
