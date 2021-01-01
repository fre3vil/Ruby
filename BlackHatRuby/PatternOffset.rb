#!/usr/bin/env ruby
# code by fre3vil



pattern_create = ('Aa0'..'Zz9').to_a.join.each_char.first(500).join

p "pattern_create: #{pattern_create}"

pattern_offset = pattern_create.enum_for(:scan , 'Aa0A').map {Regexp.last_match.begin(0)}

p "pattern_offset['Aa0A']: #{pattern_offset}"


