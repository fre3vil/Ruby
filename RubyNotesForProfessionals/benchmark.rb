#!/usr/bin/env ruby

require 'benchmark_driver'

Benchmark.driver do |x|
  x.prelude <<~RUBY
    require 'active_support/all'
    array = []
  RUBY

  x.report 'blank?', %{ array.blank? }
  x.report 'empty?', %{ array.empty? }
end
