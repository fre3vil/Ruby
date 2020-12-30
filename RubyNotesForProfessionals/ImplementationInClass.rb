#!/usr/bin/env ruby
# code by fre3vil



class NaturalNumbers
  include Enumerable

  def initialize(upper_limit)
    @upper_limit = upper_limit
  end
  
  def each(&block)
    0.upto(@upper_limit).each(&block)
  end

end


n = NaturalNumbers.new(6)
p n.reduce(:+)
p n.select(&:even?)
p n.select(&:odd?)
p n.map { |num| num ** 2 }
