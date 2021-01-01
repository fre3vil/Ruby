#!/usr/bin/env ruby
# code by fre3vil

require 'readline'
require 'io/console'

## By IO/console standard library
rows, columns = $stdin.winsize
print "-" * (columns/2) + "\n" + ("|" + " " * (columns/2 -2) + "|\n")* (rows / 2) + "-" * (columns/2) + "\n"



size = Readline.get_screen_size
p size


# return lines and columns
p [ENV['LINES'].to_i, ENV['COLUMNS'].to_i]

# reverse
p [`tput cols`.to_i , `tput lines`.to_i]
