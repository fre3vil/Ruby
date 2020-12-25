#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

require 'socket'


puts "This is a multi-client ruby server"
server = TCPServer.open(2000)
loop {
  accept = server.accept
  Thread.start(accept) do |client|
    client.puts(Time.now.ctime)
    client.puts "Closing the connection."
    client.close
  end
}
