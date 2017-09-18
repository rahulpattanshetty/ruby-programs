numbers = []
puts "enter the 5 numbers"
5.times do 
	numbers.push(gets.to_i)
end
sum = 0
numbers.each do |num|
	sum += num
end
puts sum

names = ["ramesh","suresh","veeresh","mahesh"]
names.each_with_index do |name,index|
	#1st block variable is the value,
	#2nd block variable is the index
	puts "#{index + 1}. #{name.capitalize}"
end

for name in names
	puts name.upcase
end