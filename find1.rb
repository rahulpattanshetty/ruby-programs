numbers = [10,9,10,8,15,19]

even_numbers = numbers.find_all {|num| num.even? }
#even_numbers = numbers.find_all {|num| num % 2 == 0 }
puts "#{even_numbers}"
sum_even = 0
even_numbers.each do |even_number|
	sum_even = sum_even + even_number
end
puts "Sum of even numbers is #{sum_even}"

odd_numbers = numbers.find_all {|num| num.odd? }
puts "#{odd_numbers}"
sum_odd = 0
odd_numbers.each do |odd_number|
	sum_odd = sum_odd + odd_number
end
puts "Sum of odd numbers is #{sum_odd}"
