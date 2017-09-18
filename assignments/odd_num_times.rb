 
def odd_times(numbers)
	result = {}
	numbers.each do |num|
		result[num] = numbers.count(num)
	end
	op=result.select {|key,value|  value.odd?}
	return op.key(op.values.max)
end
numbers =  [2,5,4,5,2,1,3,5,1,3]
puts odd_times(numbers)