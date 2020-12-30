#!/usr/bin/env ruby
# code by fre3vil


class Sequence
  include Enumerable
  
  @@count = 0

  def initialize(from, to, by)
    @from = from
    @to = to
    @by = by
  end

  def each
    x = @from
    while x < @to
      yield x
      x += @by
      @@count += 1
    end
  end

  def *(factor)
    Sequence.new(@from*factor, @to*factor, @by*factor)
  end

  def +(factor)
    Sequence.new(@from+factor, @to+factor, @by+factor)
  end
  
  def getCount
    @@count
  end

end


# return 1 4 7 3
object = Sequence.new(1, 10, 3)
object.each do |x|
  puts x
end
p object.getCount


