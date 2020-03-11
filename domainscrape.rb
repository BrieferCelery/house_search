require 'nokogiri'
require 'open-uri'
require 'byebug'
require 'httparty'


def scraper
  url   = 'https://www.domain.com.au/rent/zillmere-qld-4034/?price=0-600'
  unparsed_page = HTTParty.get(url)
  parsed_page    = Nokogiri::HTML(unparsed_page)
  prop_type          = parsed_page.css('.listing-result__property-type').text
  price          = parsed_page.css('.listing-result__price').text
  byebug
end
scraper


