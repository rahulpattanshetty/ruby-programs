require 'httparty'
require 'json'
url = "https://gender-api.com/get?"
api_key = "pRPLCejozFwCHFbVCR"
puts "Enter the name to determine gender"
user_name = gets.chomp

#puts "#{url}name=#{user_name}&key=#{api_key}"

#response is an object of HTTParty
response = HTTParty.get("#{url}name=#{user_name}&key=#{api_key}")
#puts "Response class:#{response.class}"
#puts "Parameter from the server are:#{response.body}"


#we get response in json string(key,value pair) we need to convert it into hash to access the keys,values in ruby
result = JSON.parse(response.body)
#puts "Result class:#{result.class}"

puts "The gender of #{user_name} is #{result["gender"]}"
