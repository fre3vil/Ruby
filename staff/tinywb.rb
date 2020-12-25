#!/usr/bin/env ruby
# frozen_string_literal: true
# code by fre3vi

require 'socket'


puts "This is an tinyweb browser."

host = '192.168.2.84'
port = 8888
path = '/index.php'

request = "GET #{path} HTTP/1.0\r\n\r\n"
socket = TCPSocket.open(host, port)
socket.print(request)
response = socket.read
headers, body = response.split("\r\n\r\n", 2)
print body
