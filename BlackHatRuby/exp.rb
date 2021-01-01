#!/usr/bin/env ruby
# code by fre3vil

require 'time'
require 'socket'

host = ARGV[0]
port=  ARGV[1]
data = "AAAAAAA"

class Attack

  def initialize(host, port)
    @host = host
    @port = port
  end

  def send_pack(data)
    @data = data
    begin
      socket = TCPSocket.new @host, @port
      recv = socket.recv(1024)
      puts "Time is: #{Time.now}"
      puts "Receive from #{@host}, Data: #{recv}"
      puts "Sendding the exp now."
      socket.send(@data)
      recv = socket.recv(1024)
      puts "Receive from #{@host}, Data: #{recv}"

    rescue SocketError
      puts "Socket connect error."
    ensure
      socket.close

    end

  end

end

target = Attack.new(host, port)
target.send_pack(data)



