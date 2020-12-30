#!/usr/bin/env ruby
# code by fre3vil




class Greeter
  def to_proc
    Proc.new do |item|
      puts "Hello, #{item}"
    end
  end
end


greet = Greeter.new
%w(world life).each(&greet)
arr = %w(hello fre3vil).map(&:upcase)
p arr
