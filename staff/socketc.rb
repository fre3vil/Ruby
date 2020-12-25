#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

require 'socket'

puts 'This is a simple ruby client.'

host = 'localhost'
port = 2000

s = TCPSocket.open(host,port)
while line = s.gets
  puts line.chop
end
s.close

