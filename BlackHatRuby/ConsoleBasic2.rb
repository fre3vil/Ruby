#!/usr/bin/env ruby
# code by fre3vil


require 'readline'

# prevent ctrl+c for exiting
trap('INT', 'SIG_IGN')

# list of commands with sorted
CMDS = ['help', 'rubyfu', 'ls', 'exit'].sort

completion = proc do |str| 
  case
  when Readline.line_buffer =~ /^help.*/i
    puts "Avaliable commands:\n" + "#{CMDS.join("\t")}"
  when Readline.line_buffer =~ /^rubyfu.*/i
    puts "Ruby goes evil.\n"
  when Readline.line_buffer =~ /^ls.*/i
    puts "ls command.\n"
  when Readline.line_buffer =~ /^exit.*/i
    puts "exit.\n"
  exit 0

  else
    CMDS.grep( /^#{Regexp.escape(str)}/i ) unless str.nil?
  end


end

# console setting

# Set completion process
Readline.completion_proc = completion

# Make sure to add a space after completion
Readline.completion_append_character = ' '

while line = Readline.readline('-> ', true)
  puts completion.call
  break if line =~ /^quit.*/i or line =~ /^exit.*/i 
end




