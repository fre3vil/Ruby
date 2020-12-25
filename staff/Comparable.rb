#!/usr/bin/env ruby
# code by fre3vil


class Rectabgle
  include Comparable

  def initialize(a, b)
    @a = a
    @b = b
  end
  
  def aera
    @a * @b
  end

  def <=>(other)
    aera <=> other.area
  end

end


r1 = Rectabgle.new(1,1)
r2 = Rectabgle.new(2,2)
r3 = Rectabgle.new(3,3)


r2 <=> r1
r2.between?(r1,r3)
r3.between?(r1,r2)

