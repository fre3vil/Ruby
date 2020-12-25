#!/usr/bin/env ruby
# code by fre3vil


class Foo
  @@classVarible = "This is class varible"

  def self.classVarible
    @@classVarible
  end

  def classV
    @@classVarible
  end

end

foo = Foo.new
puts foo.classV
puts Foo.classVarible

