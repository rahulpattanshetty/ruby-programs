players = [["virat",3],["rahul", 4]]
result = {}
players.each do |name|
	result[name.first] = name.last 
end
puts result

#assigning the values of 2d array into an hash using index value of array
players.each do |name|
	result[name[0]] = name[1] 
	#1st time name["virat",3],2nd time name["rahul",4] 
end
puts result

#if one key has one or more values than we can use below method
names = [["colors","green","red"]]
output = {}
names.each do |n|
	output[n[0]] = [n[1],n[2]]
end
puts output