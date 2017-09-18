require 'pp'

def odd_times(numbers)
result = {}
numbers.each do |num|
	result[num] = numbers.count(num)
end
pp result
key = 0
value = 0
result.each do |k,v|
	if v.odd?
		if v > value
	 		key = result.key(v)
	 		value = v
		end
	end
end
return "#{key} appears #{value}" 
end
numbers = [2,3,2,4,2,5,5,3,4,4,6,6,6,6,6,7,7,7,7,7,7,7]

puts odd_times(numbers)