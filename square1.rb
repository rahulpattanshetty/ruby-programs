puts "Enter the number"
sq_number=gets.chomp
number=sq_number.split ""

len=number.length


for i in 0...len
	n1=number[i].to_i*number[i].to_i
	number[i]=n1
end
puts number.join