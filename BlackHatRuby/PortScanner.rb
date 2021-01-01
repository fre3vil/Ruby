#!/usr/bin/env ruby
#
# KING SABRI | @KINGSABRI
#
require 'socket'
require 'thread'
require 'timeout'

host = ARGV[0]

def scan(host)
  (0..1024).each do |port|
    Thread.new {
      begin
        timeout(3) do                    # timeout of running operation
          s = TCPSocket.new(host, port)            # Create new socket
          puts "[+] #{host} | Port #{port} open"
          s.close
        end
      rescue Errno::ECONNREFUSED
        # puts "[!] #{host} | Port #{port} closed"
        next
      rescue Timeout::Error
        puts "[!] #{host} | Port #{port} timeout/filtered"
        next
      end
    }.join
  end
end

scan host
