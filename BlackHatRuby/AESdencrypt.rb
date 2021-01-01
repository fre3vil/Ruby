#!/usr/bin/env ruby
# code by fre3vil



decipher = OpenSSL::Cipher::AES.new('256-CBC')  # Or use: OpenSSL::Cipher::Cipher.new('AES-256-CBC')
decipher.decrypt                                # Initializes the Cipher for dencryption. (Must be called before key, iv, random_key, random_iv)
decipher.key = key                              # Or generate secure random key: cipher.random_key
decipher.iv = iv                                # Generate iv
plain = decipher.update(encrypted) + decipher.final  # Finalize the dencryption
