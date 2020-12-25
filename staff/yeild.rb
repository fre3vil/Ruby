#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

def countdown(num)
  num.times do |i|
    yield(num - i)
  end
end

countdown(5) { |i| puts "Call number #{i}" }
