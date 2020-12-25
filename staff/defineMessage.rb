#!/usr/bin/env ruby
# code by fre3vil


class Message
  DEFAULT_MESSAGE = "This is default message!"

  def speak(message = nil)
    if message
      puts message
    else
      puts DEFAULT_MESSAGE
    end
  end
end

Message::DEFAULT_MESSAGE = "Hello world!"
msg = Message.new
msg.speak
msg.speak("welcome fre3vil")

