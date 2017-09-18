#find count of most frequent item in an array
array = [1,2,3,4,1,1,1,2,2,2]
result = {}
array.uniq.each do |n|
	result[n] = array.count(n)
end
puts "#{result.key(result.values.max)} appears #{result.values.max} times" 
