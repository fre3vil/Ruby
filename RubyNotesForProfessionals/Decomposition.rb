#!/usr/bin/env ruby
# code by fre3vi



arr = Array.new(5) { |i| i + 1 }
a,b,c,d,e = arr
p a

aa, *bb, cc = arr
# error
# aa, *bb, *cc = arr 
p bb





