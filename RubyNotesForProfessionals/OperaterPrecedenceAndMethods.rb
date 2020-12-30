#!/usr/bin/env ruby
# code by fre3vi

class Foo
  def **(x)
    puts "Raising to rhe power of #{x}"
  end

  def <<(y)
    puts "Shifting left by #{y}"
  end

  def !
    puts "Boolean negation"
  end

  def [](x)
    puts "Looking up item #{x}"
  end

  def []=(x,y)
    puts "Setting item #{x} to #{y}"
  end
  
  def -@
    puts "unary minus"
  end

  def +@
    puts "unary plus"
  end
  
  def ==(x)
    puts "checking for equality with #{x}, reutrning false"
    false
  end

  def !=(x)
    puts "checking for inequlity with #{x}"
  end

end

puts Foo.new ** 2
puts Foo.new << 3
puts !Foo.new

f = Foo.new 
f[:cats] = 42
f[17]
+f
-f

x = (f == 42)
puts x
x = (f != 42)
puts x
