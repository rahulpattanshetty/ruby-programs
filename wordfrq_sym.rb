require 'pp'

players = "virat virat sachin virat"

names = players.split(" ")
output = {}

names.uniq.each do |name|
	output[name.to_sym] = names.count(name)
end

output.each do |key,value|
	puts "#{key}:#{value}"
end
pp output