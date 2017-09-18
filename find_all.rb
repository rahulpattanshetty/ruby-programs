numbers = [10,20,30,10,40]
puts "enter the number to search"
search = gets.to_i

result = numbers.find_all {|n| n == search}

if result.empty?
	puts "the #{search} is not found"
else
	puts "the #{search} is found, it appears #{result.length} times"
	
end