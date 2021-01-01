#!/usr/bin/env ruby
# code by fre3vil


require 'cgi'


esc = CGI.escapeHTML('"><script>alert("Rubyfu!")</script>')

p esc

p CGI.unescapeHTML(esc)

