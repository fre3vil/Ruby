#!/usr/bin/env ruby
# code by fre3vil





ip = ARGV[0]
geo_data = ARGV[1]
geoip = GeoIP.new(geo_data)
geoinfo = geoip.country(ip).to_hash

puts "IP address:\t"   + geoinfo[:ip]
puts "Country:\t"      + geoinfo[:country_name]
puts "Country code:\t" + geoinfo[:country_code2]
puts "City name:\t"    + geoinfo[:city_name]
puts "Latitude:\t"     + geoinfo[:latitude]
puts "Longitude:\t"    + geoinfo[:longitude]
puts "Time zone:\t"    + geoinfo[:timezone]
