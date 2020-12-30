#!/usr/bin/env ruby
# code by fre3vil


my_hash = {length:4, width:5}
p my_hash
p my_hash.class
p my_hash[:length]
p my_hash.fetch(:length)
my_hash.store(:name, 'fre3vil')
p my_hash.fetch(:name)
