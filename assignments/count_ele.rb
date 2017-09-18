array1 = [1, 2, 3, 4, 7, 9]
array2 = [0,1, 2, 1, 1, 4]

count_array = []

array1.each do |number|
	count_array.push(array2.find_all{|n| n <= number}.length)
	
end
puts "#{count_array}"