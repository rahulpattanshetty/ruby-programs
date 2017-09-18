def high_and_low(numbers)
	array = numbers.split(' ')
	array.map!{|number| number.to_i}#bcoz split is used each number is saved as string in array
	return "#{array.max} #{array.min}"	
end


puts high_and_low("1 2 3 4 5") 
puts high_and_low("1 2 -3 4 5") 
puts high_and_low("1 9 3 4 -5")