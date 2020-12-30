#!/usr/bin/env ruby
# code by fre3vil



q1 = Queue.new
q2 = Queue.new

(1..100).each { |e| q1 << e }
(101..200).each { |e| q2 << e }


merged = Queue.new

[q1, q2].map do |q|
  Thread.new do
    loop do
      merged << q.pop
      if q.empty?
        break
      end
    end
  end
end


p merged.to_s

