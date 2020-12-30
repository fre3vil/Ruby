#!/usr/bin/env ruby
# code by fre3vi



# select
array = Array.new(6) { |i| i + 1 }
p array.select { |number| number > 3 } # [4,5,6]

# reject
p array.reject { |number| number > 3 } # [1,2,3]

# both select and reject

p array.select { |number| number > 3 }.reject { |number| number < 5 } # [5, 6]
