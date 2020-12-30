#!/usr/bin/env ruby
# code by fre3vil


def simpleYield(var1 = 1, var2 = 2)
  puts "First we are here #{var1}"
  yield
  puts "Finally we are here #{var2}"
  yield
end

simpleYield() { puts "We invoke the yield block!" }
puts "###########"
simpleYield('One', 'Two') { puts "We invoke the yield block!" }

