require 'nokogiri'
require 'open-uri'
require_relative 'concerts.rb'

url = "https://www.930.com/"

data = Nokogiri::HTML(open(url))


