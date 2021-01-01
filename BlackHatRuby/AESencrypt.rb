#!/usr/bin/env ruby
# code by fre3vil

require 'openssl'


data = ARGV[0]

cipher = OpenSSL::Cipher::AES.new('256-CBC')
cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv
encrypted = cipher.update(data) + cipher.final

puts "data: #{data}"
puts "key: #{key}"
puts "iv: #{iv}"
puts "encrypted: #{encrypted}"



