#!/usr/bin/env ruby
# code by fre3vi



ENV['HOME'] # "~/username"
p ENV['HOME']


# will retrieve the 'FOO' environment variable. if failed, will get 'failed'
p ENV.fetch('FOO', 'failed')


