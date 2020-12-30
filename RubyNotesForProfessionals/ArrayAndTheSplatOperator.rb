#!/usr/bin/env ruby
# code by fre3vi


array = Array.new(3) { |i| i+ 1 }
p array


def wrap_in_array(value)
  [*value]
end


p wrap_in_array(1)
p wrap_in_array(array)
p wrap_in_array(nil)




def list(*values)
  values.each do |value|
    puts value
  end
end

list(array)


