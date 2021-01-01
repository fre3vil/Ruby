#!/usr/bin/env ruby
# code by fre3vil

p "Rubyfu".each_char.map {|c| '\u' + c.ord.to_s(16).rjust(4, '0')}.join

p "Rubyfu".unpack('U*').map{ |i| '\u' + i.to_s(16).rjust(4, '0')  }.join

p "Rubyfu".unpack('U*').map{ |i| "\\u00%x" % i  }.join

p "Rubyfu".each_char.map {|c| '\u' + c.ord.to_s(8).rjust(4, '0')}.join

p "\u{52 75 62 79 66 75}"


