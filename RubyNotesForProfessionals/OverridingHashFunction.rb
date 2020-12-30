#!/usr/bin/env ruby
# code by fre3vil




class A

  def initialize(hash_value)
    @hash_value = hash_value
  end

  # instance function
  def hash
    @hash_value
  end
  
  # instance function
  def eql?(b)
    self.hash == b.hash
  end

end

class B < A
end

a = A.new(1)
b = B.new(1)

h = {}
h[a] = 1
h[b] = 2

raise "error" unless h.size == 1
raise "error" unless h.include? b
raise "error" unless h.include? a
