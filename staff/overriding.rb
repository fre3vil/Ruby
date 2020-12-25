#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi



class A
  def initialize(hash_value)
    @hash_value = hash_value
  end

  def hash
    @hash_value # Return the value given externally
  end

  def eql?(other)
    hash == other.hash
  end
end

class B < A
end

a = A.new(1)
b = B.new(1)
h = {}
h[a] = 1
h[b] = 2
raise 'error' unless h.size == 1
raise 'error' unless h.include? b
raise 'error' unless h.include? a
