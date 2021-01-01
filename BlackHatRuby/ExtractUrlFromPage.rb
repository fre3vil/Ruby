#!/usr/bin/env ruby
# code by fre3vil


# require 'uri'
# string = ""
# URI.extract(string, ["http", "https"])


require 'net/http'

url = ARGV[0]
list = URI.extract(Net::HTTP.get(URI.parse(url)), ['http', 'https'])
num = 0

# regular expression
# Net::HTTP.get(URI.parse(url)).scan(/https?:\/\/[\S]+/).uniq

# Extracting email addresses from web page  
# email_regex = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i
# Net::HTTP.get(URI.parse("http://isemail.info/_system/is_email/test/?all")).scan(email_regex).uniq 


list.each do |u|
  num += 1
  p "#{num}:#{u}"
end
