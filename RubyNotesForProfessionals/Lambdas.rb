#!/usr/bin/env ruby
# code by fre3vil
# https://www.inf.fu-berlin.de/lehre/WS03/alpi/lambda.pdf

hello = -> {'hello world!'}
p hello[]

hello1 = ->(name) { "hello #{name}!" }
p hello1['world']


the_thing = lambda do |magic, ohai, dere|
  puts "magic! #{magic}"
  puts "ohai #{dere}"
  puts "#{ohai} means hello"
end

the_thing.call(1, 2, 3)


# we can use -> to create and .() to call the lambda

thing = -> (magic, ohai, dere) {

  puts "magic! #{magic}"
  puts "ohai #{dere}"
  puts "#{ohai} means hello"
}

thing.(1, 2, 3)



def try_proc
  x = Proc.new {
    return 
  }
  x.call
  puts "After x.call" # This line will never reached
end

def try_lambda
  y = -> {
    return 
  }
  y.call
  puts "After y.call" # This line will never skipped
end

try_proc
try_lambda
