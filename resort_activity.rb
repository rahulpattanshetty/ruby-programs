require 'httparty'
require 'json'

url = "http://api.openweathermap.org/data/2.5/weather?"
appid="3ae18949940ecdb295e65ef1a2186a0f"
puts "Enter the city name"
city_name = gets.chomp

response = HTTParty.get("#{url}q=#{city_name}&APPID=#{appid}&units=metric")
result = JSON.parse(response.body)

temp = result["main"]["temp"]
puts "Temp=#{temp}"
puts "Recommended Activity"
if temp > 40
	puts "Swimming"
elsif temp > 30
	puts "tennis"
elsif temp > 20
	puts "Badminton"
elsif temp > 0
	puts "chess"
else
	puts "Sit by the fire"
end

case 
	when temp > 40
		puts "Swimming"
	when temp > 30
		puts "tennis"
	else
		puts "set by the fire"
end
