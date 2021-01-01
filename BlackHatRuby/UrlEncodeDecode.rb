#!/usr/bin/env ruby
# code by fre3vil

require 'uri'

url = 'https://www.facebook.com/search.php?i=2"><script>alert(/xss/.source)</script>'

puts "Original URL is: #{url}"
puts URI.encode url

urlEncoded = URI.encode url

puts URI.decode urlEncoded


puts URI.encode_www_form_component url
