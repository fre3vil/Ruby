#!/usr/bin/env ruby
# code by fre3vil



sink = Queue.new

(1..16).to_a.map do
  Thread.new do
    sink << rand(1..100)
  end
end.map(&:join)


# convert queue to array
data = [].tap { |a| a << sink.pop until sink.empty?  }
p data
