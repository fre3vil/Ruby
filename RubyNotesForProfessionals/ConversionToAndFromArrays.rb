#!/usr/bin/env ruby
# code by fre3vil




# hash to array
hash = {:a => 1, :b => 2}.to_a
p hash
p hash.class

array = [ [:x, 3], [:y, 4] ].to_h
p array
p array.class


aHash = Hash[('a'..'z').collect{ |c| [c, c.upcase] }]
p aHash


people = ['John', 'Peter', 'Jon']
height = [4.5, 5.4, 2.3]
p Hash[people.zip(height)]
