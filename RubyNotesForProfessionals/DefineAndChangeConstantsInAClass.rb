#!/usr/bin/env ruby
# code by fre3vi




class Message

  DEFAULT_MESSAGE = "HELLO WORLD"

  def speak(message = nil)
    if message
      puts message
    else
      puts DEFAULT_MESSAGE
    end
  end

end


# The below will show warning
# It's the bad code
p Message::DEFAULT_MESSAGE
Message::DEFAULT_MESSAGE = "HELLO RUBY."
p Message::DEFAULT_MESSAGE
