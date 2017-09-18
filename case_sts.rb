temp = 33

puts "Recommended Activity"

case 
	when temp > 40
		puts "Swimming"
	when temp > 30
		puts "tennis"
	else
		puts "set by the fire"
end

n1 = 10
n2 = 20
puts "Enter the operation(+,-,/,*)"
opt = gets.chomp

case opt
when "+"
	puts n1 + n2
when "-"
	puts n2 - n1
when "/"
	puts n2 / n1
when "*"
	puts n1 * n2
else
	puts "Invalid selection"
end


#ternary operators
n1 = 10
n2 = 20

puts n1 > n2 ? "n1 is greater" : "n2 is greater"