puts "Enter 10 numbers"
numbers=[]

10.times do
	num=gets.to_i
	numbers.push(num) #numbers.push(gets.to_i)
end

puts "numbers=#{numbers}"
puts "Enter the number that you want to search"
num_search = gets.to_i
i=0
count=0
=begin
numbers.each do |num|
	if num == num_search
		count+=1
	end
end
=end
=begin
while i < 10
	if num_search == numbers[i]
		count+=1
	end
	i+=1
end
=end
count=numbers.count(num_search)
if count > 0
	puts "Number #{num_search} found #{count} times"
else
	puts "Not found"
end