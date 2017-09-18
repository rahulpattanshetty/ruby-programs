numbers = [10,20,30,40,50]
puts "Enter the number to search"
search_num = gets.to_i

result = numbers.find {|n| n == search_num}

if result.nil?
	puts "#{search_num} is not found"
else
	puts "#{search_num} is found"
end
