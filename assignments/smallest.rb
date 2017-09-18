input =  [34, -345, -1, 100]
result = input.first
input.each do |num|
	if num < result
		result = num
	end
end
puts result
-----------------------------------------
input =  [34, -345, -1, 100]
puts input.min