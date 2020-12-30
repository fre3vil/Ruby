#!/usr/bin/env ruby
# code by fre3vi




class Dinasaur 
  
  # class variable use @@
  # instance variable use @

  # define a instance variable
  @base_sound = "raw_sound"

  def initialize(sound = nil)
    @sound = sound || self.class.base_sound
  end

  # define a class method
  def speak
    @sound
  end

  def try_to_speak
    @base_sound
  end

  def count_and_store_sound_length
    # |char, i | => i is index form 0
    @sound.chars.each_with_index do |char, i|
      @sound_length = i + 1 
      p "#{char}: #{sound_length}"
    end
  end

  def sound_length
    @sound_length
  end

  def self.base_sound
    @base_sound
  end
end


dino_1 = Dinasaur.new
dino_2 = Dinasaur.new "grrr"


p dino_1.try_to_speak # => nil
p dino_1.speak # => raw_sound

dino_1.count_and_store_sound_length 
p dino_1.sound_length 
# not invoke the count_and_store_sound_length function
# dino_2.sound_length => nil
p dino_2.sound_length 


class DuckDuckDinasaur < Dinasaur
  @base_sound = "DuckDuckSound"
end

ddsound = DuckDuckDinasaur.new

# sub object will rewrite parenr class instance variable
# return DuckDuckSound
p ddsound.speak 

# return DuckDuckSound
p DuckDuckDinasaur.base_sound

# return raw_sound
p Dinasaur.base_sound 




