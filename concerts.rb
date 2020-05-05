require 'sinatra'
require 'nokogiri'
require 'open-uri'
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end


get '/' do
    url = 'https://www.930.com/'

  data = Nokogiri::HTML(open(url))

  @concerts = data.css('.list-view-item')
  erb :shows
end



# @concerts.each do |concert|
#   puts concert.at_css('.event-name').text

#   puts concert.at_css('.dates').text

#   price = concert.at_css('.price-range').text

#   puts concert.at_css('.doors').text

#   if !price.nil?
#     puts price
#   else
#     puts 'SOLD OUT'
#   end
#   puts ''
# end
