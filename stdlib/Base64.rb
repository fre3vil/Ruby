#!/usr/bin/env ruby
# code by fre3vil


require 'base64'


str = 'hello world!'
p str

enc = Base64.encode64(str) 
p enc

plain = Base64.decode64(enc)
p plain
