#!/usr/bin/env ruby
# code by fre3vil


class Foo
  def ==(x)
    puts "checking for equal with #{x}, return false"
    false
  end
end

f = Foo.new
x = (f == 42)
puts x
x = (f != 42)
puts x
