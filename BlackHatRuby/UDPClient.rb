#!/usr/bin/env ruby
# code by fre3vil



require 'socket'
client = UDPSocket.new
client.connect('localhost', 9911)       # Connect to server on port 991
client.puts "Hi, UDP Server!", 0        # Send message 
server.recv(1024)                       # Receive 1024 bytes of the server message
