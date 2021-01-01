#!/usr/bin/env ruby
#
# SSL/TLS validator
# KING SABRI | @KINGSABRI
#

def validate_ssl(target, conn_type=:web)

  case conn_type
    # Web Based SSL
    when :web
      require 'open-uri'

      begin
        open("https://#{target}")
        puts '[+] Valid SSL Certificate!'
      rescue OpenSSL::SSL::SSLError
        puts '[+] Invalid SSL Certificate!'
      end
    # Socked Based SSL
    when :socket
      require 'socket'
      require 'openssl'

      ssl_context = OpenSSL::SSL::SSLContext.new
      ssl_context.verify_mode = OpenSSL::SSL::VERIFY_PEER
      cert_store = OpenSSL::X509::Store.new
      cert_store.set_default_paths
      ssl_context.cert_store = cert_store
      socket = TCPSocket.new(target, 443)
      ssl_socket = OpenSSL::SSL::SSLSocket.new(socket, ssl_context)

      begin
        ssl_socket.connect
        puts '[+] Valid SSL Certificate!'
      rescue OpenSSL::SSL::SSLError
        puts '[+] Invalid SSL Certificate!'
      end

    else
      puts '[!] Unknown connection type!'
  end

end


good_ssl = 'google.com'
bad_ssl  = 'expired.badssl.com'

validate_ssl(bad_ssl, :web)
validate_ssl(bad_ssl, :socket)

validate_ssl(good_ssl, :web)
validate_ssl(good_ssl, :socket)
