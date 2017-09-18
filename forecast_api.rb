#http://api.openweathermap.org/data/2.5/forecast?q=bangalore&APPID=3ae18949940ecdb295e65ef1a2186a0f

require 'httparty'
require 'json'
require 'pp' #show the hash 
require 'pry'
url = "http://api.openweathermap.org/data/2.5/forecast?"
appid="3ae18949940ecdb295e65ef1a2186a0f"

city_name = "bangalore"

reponse = HTTParty.get("#{url}q=#{city_name}&APPID=#{appid}&units=metric")
result = JSON.parse(reponse.body)
#binding.pry
date_f = []
puts "Wheather forecast"
output = {}
result["list"].each do |list|
	date = list["dt_txt"].split(" ")[0]
	time = list["dt_txt"].split(" ")[1]
	ddmmyy = date.split("-").reverse
	forma_date = ddmmyy.join("-")
	temp = list["main"]["temp"]
	if output.has_key?(forma_date)
		data = [time, temp]
		output[forma_date] << data
		
	else
		output[forma_date] = []
		 
	end
		
end
#puts result["list"][0]


output.each do |key,value|
	puts"#{key}"
	value.each do |n|
		puts "***#{n.first}  #{n.last}"
	end
	puts "\n"
end

#pp output