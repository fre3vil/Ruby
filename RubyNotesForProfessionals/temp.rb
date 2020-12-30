#!/usr/bin/env ruby
# code by fre3vil

class Test1

 def main_method
   method_private
 end

 private
 def method_private
   puts "Inside methodPrivate for #{self.class}"
 end

end

class Test2 < Test1

 def main_method
 	method_private
 end

end

class Test3 < Test1

 def main_method
 	self.method_private #We were trying to call a private method with an explicit receiver and if called in the same class with self would fail.
 end

end

Test1.new.main_method
Test2.new.main_method
Test3.new.main_method


def print_spouses(person, *spouses)
 spouses.each do |spouse|
 puts "#{person} married #{spouse}."
 end
end

print_spouses('Elizabeth', 'Conrad', 'Michael', 'Mike', 'Eddie', 'Richard', 'John', 'Larry')
