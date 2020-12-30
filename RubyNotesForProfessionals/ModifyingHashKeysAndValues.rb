#!/usr/bin/env ruby
# code by fre3vil



fruit = {name: 'apple', color: 'green', shape: 'round'}
p fruit

new_fruit = fruit.inject({}) { |memo, (k, v)| memo[k.to_s] = v.upcase; memo }
p new_fruit

new_fruit_v2 = fruit.each_with_object({}) { |(k, v), memo| memo[k.to_s] = v.upcase }
p new_fruit_v2

new_fruit_v3 = Hash[fruit.map{ |k, v| [k.to_s, v.upcase] }]
p new_fruit_v3
