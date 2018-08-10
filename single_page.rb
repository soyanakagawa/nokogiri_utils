#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# sample value
url = 'https://a16z.com/portfolio/'
xpath = '//*[@id="primary"]/main/section[2]/div/div/a/@href' 

# Fetch and parse HTML document
doc = Nokogiri::HTML(open(url))

puts "# URLs"
doc.xpath(xpath).each do |link|
  puts link.value
end

