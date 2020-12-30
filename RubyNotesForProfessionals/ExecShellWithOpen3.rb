#!/usr/bin/env ruby
# code by fre3vil

require 'open3'


cmd = 'ping -c 4 www.baidu.com'
Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
  while line = stdout.gets
    puts line
  end
end

