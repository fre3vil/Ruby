#!/usr/bin/env ruby
# code by fre3vil


require 'ipaddr'

ip = IPAddr.new(ARGV[0])
network_prefix =ip.mask(ARGV[1])
p network_prefix

