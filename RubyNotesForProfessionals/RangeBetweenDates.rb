#!/usr/bin/env ruby
# code by fre3vil





require 'date'

date1 = Date.parse "01/06/2016"
date2 = Date.parse "05/06/2016"

p "Period #{date1.strftime("%d/%m/%Y")} to #{date2.strftime("%d/%m/%Y")}"


(date1..date2).each do |date|
  p date.strftime("%d/%m/%Y")
end

