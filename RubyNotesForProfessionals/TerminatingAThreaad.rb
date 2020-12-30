#!/usr/bin/env ruby
# code by fre3vil



require 'thread'


class CounterThread < Thread

  def initialize(count = 0, bool = true)
    @count = count
    @continue = bool

    super do
      @count += 1 while @continue
      puts "I'm counted up to #{@count} before I was cruelly stopped."
    end

  end

  def stop
    @continue = false
  end

end


counter = CounterThread.new
sleep 2
counter.stop
