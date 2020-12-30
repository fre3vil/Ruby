#!/usr/bin/env ruby
# code by fre3vil


class FileNotFound < StandardError
end


def readfile(path)
  File.exist?(path) || raise(FileNotFound, "File #{path} not exist")
  file = File.open(path, 'r')
  file_data = file.read
  p file_data
  file.close
end

readfile("main.rb")
# readfile("notexists.txt")
