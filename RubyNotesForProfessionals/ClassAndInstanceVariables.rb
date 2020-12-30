#!/usr/bin/env ruby
# code by fre3vil



$GLOBAL_VARIABLE = 0

class Person
  @@class_var = "peron" # class variable
  def initialize(name, age)
    my_age = age  # my_age is local variable, will be destroyed at the end of constructor
    @name = name  # instance variable. will be destroyed when the object is destroyed
  end


  def insatnce_method
    # must be used with object
    puts "instance method"
  end

  def self.class_method
    # can be used as Person.class_method
    puts "class method"
  end

end


person = Person.new("fre3vil", 12)
Person.class_method
person.insatnce_method

# p person.my_age # error
p $GLOBAL_VARIABLE.to_s
