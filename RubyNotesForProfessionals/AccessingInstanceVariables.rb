#!/usr/bin/env ruby
# code by fre3vil

class Cat

  attr_reader :age  # can read but never change it
  attr_writer :name # can write but never read it
  attr_accessor :breed  # can both write and read it


  def initialize(name, breed)
    @name = name
    @breed = breed
    @age = 2
  end
  
  def speak
    puts "I'm #{@name} and I am a #{@breed} cat"
  end

end

my_cat = Cat.new("Boka", "peti")

p my_cat.age
p my_cat.breed
p my_cat.speak
my_cat.name = "frss"
p my_cat.speak
