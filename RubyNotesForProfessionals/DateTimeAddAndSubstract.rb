#!/usr/bin/env ruby
# code by fre3vil

require 'date'


p DateTime.new(2020, 12, 25, 23, 0) + 1 # add more one day
p DateTime.new(2020, 12, 25, 23, 0) + 2.5 # add more two and half a day
p DateTime.new(2020, 12, 25, 23, 0) - 2.5 # 
p DateTime.new(2020, 12, 25, 23, 0) + Rational(1,2) # add more two and half a day
p DateTime.new(2020, 12, 25, 23, 0) - 1 # return to previous day

