#!/usr/bin/env ruby
# code by fre3vil


class Retangle
  include Comparable

  def initialize(a, b)
    @a = a
    @b = b
  end

  def area
    @a * @b
  end

  def <=>(other)
    area <=> other.area
  end

end

r1 = Retangle.new(1, 1)
r2 = Retangle.new(2, 2)
r3 = Retangle.new(3, 3)

p r2 >= r1  # true
p r2.between? r1, r3  # true
p r3.between? r1, r2  # false
