numbers=[10,20,3,25]

len=numbers.length
max=0
min=0
sum=0
avg=0
odd=0
numbers.each do |number|
		if number > max
			max = number
		else 
			min = number
		end
		sum = sum + number
		avg = sum / len.to_f
		if (number % 2) != 0
			odd = odd + number
		end
end

puts "max=#{max}"
puts "Maximum=#{numbers.max}" #numbers.max built in fun
puts "min=#{min}"
puts "Minimum=#{numbers.min}" #numbers.min built in fun
puts "Sum=#{sum}"
puts "sum=#{numbers.inject(:+)}" #numbers.inject(:+) will give the sum of the numbers
puts "Avg=#{avg}"
puts "Sum of odd number=#{odd}"

