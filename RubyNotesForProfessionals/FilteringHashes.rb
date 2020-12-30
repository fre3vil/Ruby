#!/usr/bin/env ruby
# code by fre3vil

hash = {:a => 1, :b => 2, :c => 3}

# select 
p hash.select { |k, v| k != :a && v.even?  }  # {:b => 2}

p hash.select { |_, v| v.even?  }  # {:b => 2}

p hash.select { |k, _| k == :c  }  # {:c => 3}


# reject

p hash.reject { |_, v| v.even?  }  # {:a => 1, :c => 3}

p hash.reject { |k, _| k == :b  }  # {:a => 1, :c => 3}
