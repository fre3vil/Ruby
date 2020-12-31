#!/usr/bin/env ruby
# code by fre3vil



require 'benchmark'
puts Benchmark.measure {" a"*1_000_000 }

n = 5_000_000
Benchmark.bm do |x|
  x.report { for i in 1..n; a = '1'; end }
  x.report { n.times do   ; a = '1'; end }
  x.report { 1.upto(n) do ; a = '1'; end }
end


Benchmark.bm(7) do |x|
  x.report("for:") { for i in 1..n; a = '1'; end }
  x.report("times:") { n.times do   ; a = '1'; end }
  x.report("upto:") { 1.upto(n) do ; a = '1'; end }
end


array = (1..1_000_000).map {rand}
Benchmark.bmbm do |x|
  x.report("sort!") { array.dup.sort! }
  x.report("sort") { array.dup.sort }
end


m = 1_000_000
time = Benchmark.measure do
  m.times {a = "1"}
end

puts time




# realtime()

def realtime # yield
  r0 = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  yield
  Process.clock_gettime(Process::CLOCK_MONOTONIC) - r0
end


