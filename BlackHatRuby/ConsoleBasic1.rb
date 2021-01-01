#!/usr/bin/env ruby
# code by fre3vil


require 'readline'

# prevent ctrl+c for exiting
trap('INT', 'SIG_IGN')

# list of commands with sorted
CMDS = ['help', 'rubyfu', 'ls', 'pwd', 'exit'].sort

completion = proc { |line| CMDS.grep( /^#{Regexp.escape( line )}/ ) }

# console setting

# Set completion process
Readline.completion_proc = completion

# Make sure to add a space after completion
Readline.completion_append_character = ' '

while line = Readline.readline('-> ', true)
  puts line unless line.nil? or line.squeeze.empty?
  break if line =~ /^quit.*/i or line =~ /^exit.*/i 
end




