#!/usr/bin/env ruby
# code by fre3vil




# class can contain module
# module can concatin others modules and classes

module SomeMixin
  def foo
    puts "foo!"
  end

end


class Bar
  include SomeMixin

  def bar
    puts "bar!"
  end
end

b = Bar.new
b.bar
b.foo
