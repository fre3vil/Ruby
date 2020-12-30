#!/usr/bin/env ruby
# code by fre3vil




Person = Struct.new :first_name, :last_name
person = Person.new  'john', 'peter'
p person.first_name
p person.last_name
