#!/usr/bin/env ruby
# code by fre3vi




class Dinosaur

  @@classification = "Like a Reptile, But like a bird"  # class variables

  # 1
  def self.classification
    @@classification
    # puts "use 1"
  end

  # 2
  def classification
    @@classification
    # puts "use 2"
  end

end


dino = Dinosaur.new 
puts dino.classification # use 2
puts Dinosaur.classification # use 1



class TRex < Dinosaur
  @@classification = "Big teeth birth!"
end

puts TRex.classification  #  "Big teeth birth!"
puts Dinosaur.classification #  "Big teeth birth!" will overwrite the parent class




module SomethingStrange
  @@classification  = "Something Strange" 
end

class DuckDinosaur < Dinosaur
  include SomethingStrange
end

puts "#########"
puts DuckDinosaur.class_variables
puts SomethingStrange.class_variables
puts DuckDinosaur.classification  # Big beeth birth 
