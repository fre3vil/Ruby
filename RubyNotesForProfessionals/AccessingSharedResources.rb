#!/usr/bin/env ruby
# code by fre3vil




puts "Ruby Thread Code"

counter = 0
counter_mutex = Mutex.new

3.times.map do |index|
  Thread.new do
    counter_mutex.synchronize do |i| 
      counter += 1 
      puts "Thread[#{index}] : Before #{counter}"
    end
  end
end.each(&:join)




