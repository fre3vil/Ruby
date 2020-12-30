#!/usr/bin/env ruby
# code by fre3vi





$i_am_global_variable = "OMG"


class Dinasaur
  
  def instance_method
    p "Global variable can be used in anywhere . here is: #{$i_am_global_variable}, another is: #{$another_global_variable}"
  end

  def self.classmethod
    $another_global_variable = "Another OMG"
    p "Use global variable #{$i_am_global_variable}"
  end

end


# use class method directly
Dinasaur.classmethod

# create a new object
dinasaur = Dinasaur.new 
dinasaur.instance_method


p $noop # => nil
