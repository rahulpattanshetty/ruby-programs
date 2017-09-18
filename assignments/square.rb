
def squareSum(numbers)
	result = 0
	numbers.each {|number| result += number*number}
	return result
end
puts squareSum([1, 2, 2])