#!/usr/bin/env ruby
# code by fre3vil



require 'socket'

server = UDPSocket.new                                  # Start UDP socket
server.bind('0.0.0.0', 9911)                            # Bind all interfaces to port 9911
mesg, addr = server.recvfrom(1024)                      # Receive 1024 bytes of the message and the sender IP
server puts "Hi, UDP Client #{addr}", addr[3], addr[1]  # Send a message to the client 
server.recv(1024)                                       # Receive 1024 bytes of the message
