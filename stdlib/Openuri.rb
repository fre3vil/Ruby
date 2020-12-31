#!/usr/bin/env ruby
# code by fre3vil

require 'open-uri'
host = 'https://www.baidu.com'
URI.open(host) {|f|
  f.each_line { |line| p line }

  p f.base_uri
  p f.content_type
  p f.charset
  p f.content_encoding
  p f.last_modified

}

