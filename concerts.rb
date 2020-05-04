require 'nokogiri'
require 'open-uri'

url = 'https://www.930.com/'

data = Nokogiri::HTML(open(url))

concerts = data.css('.upcoming-shows-grid')

concerts.each do |concert|
  puts concert.at_css('.event-name').text

  puts concert.at_css('.dates').text

  price = concert.at_css('.price-range').text

  puts concert.at_css('.doors').text

  if !price.nil?
    puts price
  else
    puts 'SOLD OUT'
  end
  puts ''
end
