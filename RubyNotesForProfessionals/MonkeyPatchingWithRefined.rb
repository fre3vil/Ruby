#!/usr/bin/env ruby
# code by fre3vil




module RefiningString
  refine String do
    def reverse
      "Monkey patching with refine."
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
    @str.reverse
  end
  
end

p AClassWithoutMP.new("Hello world.").reverse
p AClassWithMP.new("Hello world.").reverse
