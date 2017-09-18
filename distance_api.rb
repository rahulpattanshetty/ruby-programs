#https://maps.googleapis.com/maps/api/distancematrix/json?origins=bangalore&destinations=mysore

require 'httparty'
require 'json'
url = "http://maps.googleapis.com/maps/api/distancematrix/json?"
api_key ="AIzaSyAlAYubnRGK_dmJ3bsQY1ryuG3GwF6Ks1k"
puts "Enter the source address"
source_add = gets.chomp
puts "Enter the destination address"
dest_add = gets.chomp

puts "#{url}origins=#{source_add}&destinations=#{dest_add}"
response = HTTParty.get("#{url}origins=#{source_add}&destinations=#{dest_add}")
result = JSON.parse(response.body)


puts "KM=#{result["rows"][0]["elements"][0]["distance"]["text"]}"
puts "Time=#{result["rows"][0]["elements"][0]["duration"]["text"]}"
