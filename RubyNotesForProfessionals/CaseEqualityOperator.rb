#!/usr/bin/env ruby
# code by fre3vi




# bad

puts (1..5) === 3
puts (1..5) === 6
puts Integer === 42
puts Integer === "fourtytwo"

puts /ell/ === 'Hello'
puts /ell/ === 'Foobar'




puts "============="


# good
puts 42.is_a?(Integer)
puts (1..5).include?(3)
puts /ell/ =~ 'Hello' # 1
