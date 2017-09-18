puts "Enter the number"
number=gets.to_i

sum=0

for i in 1...number
	if i%3==0 || i%5==0
		sum=sum+i
	end
end
puts "The sum of numbers which are divisible	Q by 3 and 5 is"
puts sum