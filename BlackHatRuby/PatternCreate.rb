#!/usr/bin/env ruby
# code by fre3vil

pattern_create = ('Aa0'..'Zz9').to_a.join.each_char.first(1024).join
# pattern_create = pattern_create * (30_000 / 20_280.to_f).ceil

p pattern_create



