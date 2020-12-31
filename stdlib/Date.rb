#!/usr/bin/env ruby
# code by fre3vil

require 'date'

p Date.new(2020,1,1)
p Date.jd(2451994)
p Date.ordinal(2001,45)
p Date.commercial(2001,5,6)
p Date.parse('2020-01-01')
p Date.strptime('03-02-2020', '%d-%m-%Y')
p Time.new(2020,2,3).to_date

