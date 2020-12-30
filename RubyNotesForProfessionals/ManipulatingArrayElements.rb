#!/usr/bin/env ruby
# code by fre3vi

puts "hello ruby"


# [1,2,3,4,5]
array = Array.new(5) { |i| i+1 }
p array

# [1,2,3,4,5,6]
array << 6
p array

# [1,2,3,4,5,6,7]
array.push(7)
p array

# [0,1,2,3,4,5,6,7]
array.unshift(0)
p array


# [0,1,2,3,4,5,6,7,[8,9]]
array << [8,9]
p array

# [0,1,2,3,4,5,6,7]]
array.pop
p array


# [1,2,3,4,5,6,7]]
array.shift
p array


# [2,3,4,5,6,7]]
# delete the value of the element 
array.delete(1)
p array

# [2,3,4,5,6,7]]
# delete 2 with the index of the element 
array.delete_at(0) # [3,4,5,6,7]]
p array


array_two = [1,2,2,3,4,5]
p array_two
p array_two - [2]  # [1,3,4,5]



# combine 

p [1,2,3] + [4,5,6]
p [1,2,3].concat([4,5,6])
p [1,2,3,4,5,6] - [2,3]
p [1,2,3] | [2,3,4]
p [1,2,3] & [3,4]
p [1,2,3] * 2
