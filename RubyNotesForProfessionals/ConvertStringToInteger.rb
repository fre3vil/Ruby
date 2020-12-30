#!/usr/bin/env ruby
# code by fre3vil


p Integer("123")
p Integer("0xFF")
p Integer("0b100")
p Integer("0555")
p Integer('10', 5)
p Integer('74', 8)
p Integer('NUM', 36)



p "23".to_i
p "23-hello".to_i
p "hello".to_i




p "10".to_i(2)
p "10".to_i(3)
p "10".to_i(8)  # 8

p 1_000 # 1000
p 0xFF  # 255
p 0b100 # 4
p 0b110 # 6
p 0555  # 365
