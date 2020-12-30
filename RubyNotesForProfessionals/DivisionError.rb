#!/usr/bin/env ruby
# code by fre3vil



def divide(x, y)
  begin
    result = x.to_i / y.to_i
    puts "#{x} divide #{y} = #{result}"
  rescue ZeroDivisionError
    puts "Don't divide by zero!"
    return nil
  rescue TypeError
    puts "Only works on numbers."
    return nil
  end
end

divide(ARGV[0], ARGV[1])
