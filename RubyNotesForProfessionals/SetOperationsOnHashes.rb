#!/usr/bin/env ruby
# code by fre3vil



hash1 = { :a => 1, :b => 2 }
hash2 = { :b => 2, :c => 3 }

hash = hash1.select { |k,v| (hash2.include?(k) && hash2[k] == v ) }
p hash


hash3 = {:b => 4, :c => 5}
p hash1.merge(hash2)
p hash1.merge(hash3)

