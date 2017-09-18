players = "virat virat sachin"
names = players.split(" ")
result = {} #creating a empty hash object
names.uniq.each do |name|
	result[name] = names.count(name)#assigning values into in hash
end
puts result
result.each do |key,value|
	puts "#{key} - #{"*"*value}"
end