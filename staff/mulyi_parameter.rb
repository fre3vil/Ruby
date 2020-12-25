#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

def make_animal_sound(*multi)
  multi.each { |num| puts "Welcome #{num}"}
end 

make_animal_sound('mumu')
make_animal_sound('wooo', 'boom')


