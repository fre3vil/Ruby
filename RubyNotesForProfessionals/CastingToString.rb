#!/usr/bin/env ruby
# code by fre3vi




puts 123.45.to_s  # "123.45"
puts String(123.45) # "123.45"

puts sprintf("%s", 123.45)  # "123.45"
# "%s" % 123.45 ==> "123.45" 
# "%d" % 123.45 ==> "123" 
# "%.3f" % 123.45 ==> "123.450" 
