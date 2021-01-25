#!/usr/bin/env ruby
# code by fre3vil

require 'chilkat'



puts "use socks5 request"

http = Chilkat::CkHttp.new()
http.put_SocksVersion(5)
http.put_SocksHostname("192.168.2.185")
http.put_SocksPort(7891)

# http.put_SocksUsername("user")
# http.put_SocksPassword("pass")

html = http.quickGetStr("https://www.google.com")
if (http.get_LastMethodSuccess() != true)
  print http.lastErrorText() + "\n"
  exit
end


print html + "\n"
print "----" + "\n"
print "Success!" + "\n"

