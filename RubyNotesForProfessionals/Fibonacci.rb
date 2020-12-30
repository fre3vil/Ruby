#!/usr/bin/env ruby
# code by fre3vil




fibonacci = Enumerator.new do |yielder|
  a = b = 1
  loop do 
    yielder << a
    a, b = b, a+b
  end
end

p fibonacci.take 10

