
require 'httparty'
require 'json'
require 'pp'

url = "http://api.openweathermap.org/data/2.5/weather?"
appid="3ae18949940ecdb295e65ef1a2186a0f"
puts "Enter the city"
city_name = gets.chomp

reponse = HTTParty.get("#{url}q=#{city_name}&APPID=#{appid}&units=metric") #units is used to convert kelvin to celsius
result = JSON.parse(reponse.body)

pp result #display the entire hash

puts "The current temperature in #{result["name"]}(#{result["coord"]["lon"]},#{result["coord"]["lat"]}) is #{result["main"]["temp"]}"