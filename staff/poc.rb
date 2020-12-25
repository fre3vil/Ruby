#!/usr/bin/env ruby
# code by fre3vi


((1..5).to_a * 2).select do |e|
    e if (e == 2) .. (e == 4)
end