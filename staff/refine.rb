#!/usr/bin/env ruby
# code by fre3vil

module RefiningString
 refine String do
  def reverse
    "Hell riders"
  end
  end
 end

class AClassWithoutMP
 def initialize(str)
    @str = str
 end

 def reverse
    @str.reverse
 end
end

class AClassWithMP
 using RefiningString

 def initialize(str)
    @str = str
 end

 def reverse
    str.reverse
 end
end
AClassWithoutMP.new("hello".reverse 
AClassWithMP.new("hello").reverse 