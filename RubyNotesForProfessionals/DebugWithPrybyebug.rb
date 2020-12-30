#!/usr/bin/env ruby
# code by fre3vil



require 'pry-byebug'



def hello_world
  puts "Hello"
  binding.pry
  puts "World!"
end

hello_world
