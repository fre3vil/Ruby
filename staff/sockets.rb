#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

require 'socket'


puts "This is a simple ruby server"
server = TCPServer.open(2000)
loop {
  client = server.accept
  client.puts(Time.now.ctime)
  client.puts "Closing the connection."
  client.close
}
