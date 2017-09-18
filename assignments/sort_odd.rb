def sortArray(numbers)
	result = []
	odd = numbers.find_all{|n| n.odd?}.sort
	numbers.each do |number|
		if number.odd?
			result.push(odd.first)
			odd.shift(1)
		else
			result.push(number)
		end
	end
	return result
end
puts "#{sortArray([5, 3, 2, 8, 1, 4])}"