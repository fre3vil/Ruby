#!/usr/bin/env ruby
# code by fre3vi

array = %i(one two three)

a = 'hello'
b = 'goodbye'

array_one = %I(#{a} #{b} world)
array_two = %i(#{a} #{b} world) # with double qoutes


p array_one
p array_two
