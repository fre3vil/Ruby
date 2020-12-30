#!/usr/bin/env ruby
# code by fre3vil




regexp_slash = /hello/
regexp_bracket = %r{hello}
regexp_new = Regexp.new('hello')

string_to_match = "hello world!"


# metch return 0, else return nil
p string_to_match =~ regexp_slash
p string_to_match =~ regexp_bracket
p string_to_match =~ regexp_new

