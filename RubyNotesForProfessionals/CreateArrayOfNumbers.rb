#!/usr/bin/env ruby
# code by fre3vi





# method one
numbers_one = [1,2,3,4,5]
p numbers_one

# method two
numbers_two = Array(1..10)
p numbers_two

# method three
numbers_three = (1..10).to_a
p numbers_three

# method four
numbers_four = (1..10).step(2).to_a
p numbers_four

# method five
numbers_five = 2.step(10, 3).to_a
p numbers_five

# method six
numbers_six = (1..10).map { |number| number * number }
p numbers_six


# method seven
numbers_seven = (1..10).lazy
p numbers_seven
p numbers_seven.first(5)
p numbers_seven.first(10)
