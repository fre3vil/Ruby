#!/usr/bin/env ruby
# code by fre3vil

require 'time'





p Time.now

p Time.new(2020, 12, 12)
p Time.new(2020, 12, 12, 10)
p Time.new(2020, 12, 12, 10, 14)
p Time.new(2020, 12, 12, 10, 14, 10)
p Time.new(2021, "May", 12, 10, 14, 16, "+12:34")


p Time.now.to_i
p Time.at(1609143558)
