#!/usr/bin/env ruby
# code by fre3vil


def welcome(*guests)
  guests.each do |guest|
    puts "Welcome #{guest}."
  end
end

welcome("fre3vil")
puts "#############"
welcome("john", "peter")
