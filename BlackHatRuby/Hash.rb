#!/usr/bin/env ruby
# code by fre3vil

require 'digest'



def hash(str)
  md5_str = Digest::MD5.hexdigest str
  sha1_str = Digest::SHA1.hexdigest str
  # bitlen could be 256, 384, 512
  sha2_str = Digest::SHA2.new(bitlen = 256).hexdigest str

  puts "MD5(#{str})hash: #{md5_str}"
  puts "SHA1(#{str}) hash: #{sha1_str}"
  puts "SHA2(#{str}) hash: #{sha2_str}"
end


list = ARGV

if list.empty?
  puts "Usage: #{__FILE__} STRING"
end

list.each do |s|
  puts "#{s.index}"
  hash s
end
