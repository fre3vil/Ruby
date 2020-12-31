#!/usr/bin/env ruby
# code by fre3vil


require 'abbrev'
require 'pp'


# Calculates the set of unambiguous abbreviations for a given set of strings.

pp Abbrev.abbrev(['ruby'])

pp Abbrev.abbrev(%w{ruby rule})

pp %w{ summer winter }.abbrev
