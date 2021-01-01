#!/usr/bin/env ruby
# code by fre3vil



# To change value presentation from (\xea to 0xea), change \x%x to 0x%x
# To make all letters capital (\xea to \xEA) , change \x%x to \x%X
p (0..255).map {|b| ('\x%02X' % b)}


