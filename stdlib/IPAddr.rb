#!/usr/bin/env ruby
# code by fre3vil




require 'ipaddr'

ipaddr1 = IPAddr.new "3ffe:505:2::1"
p ipaddr1
p ipaddr1.to_s

ipaddr2 = ipaddr1.mask(48)
p ipaddr2.to_s

