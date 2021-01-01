#!/usr/bin/env ruby
# code by fre3vil


str = "Hello world!"
p str.unpack("H*")


p '\x%02x' % "A".ord

# to Hex
p "ABCD".unpack('H*')[0].scan(/../).map { |h| '\x'+h }.join

p "ABCD".unpack('C*').map { |c| '\x%02x' % c }.join

# *"" equal of .join
p "ABCD".split("").map { |h| '\x' + h.unpack('H*')[0] }*""

p "ABCD".split("").map { |c| '\x' + c.ord.to_s(16) }.join
p "ABCD".split("").map { |c| '\x' + c.ord.to_s(16) }*""

p "ABCD".chars.map { |c| '\x' + c.ord.to_s(16) }*""

p "ABCD".each_byte.map { |b| b.to_s(16) }.join

p "ABCD".each_char.map { |c| '\x' + (c.unpack('H*')[0]) }.join

p "ABCD".chars.map { |c| '\x%x' % c.ord }.join

# convert hex to string/binary
p ["41424344"].pack('H*')
p "41424344".scan(/../).map { |x| x.hex.chr }.join
p "41424344".scan(/../).map(&:hex).pack("C*")





