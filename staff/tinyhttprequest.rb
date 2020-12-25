#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi






require 'net/http'

host = '192.168.2.84'
port = 8888

path = '/info.php'

puts "This is a tiny web server request"
http = Net::HTTP.new(host, port) # create a connection
headers, body = http.get(path) # request the file
if headers.code == "200"
  print body
else
  puts "#{headers.code}, #{headers.message}"
end


