require 'httparty'
require 'json'



response = HTTParty.get("http://localhost:3000/api/v1/categories")

result = JSON.parse(response.body)

puts "Listing of categories"

result.each do |category|
	puts "#{category["name"]}(Products count-#{category["products"].length})"
end



