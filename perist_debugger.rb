=begin
number = 234
1. 2*3*4=24
2. 2*4=8

number = 55
1. 5*5=25
2. 2*5=10
3. 1*0=0	
 
=end

number = 55
while number > 9
#	product = 1
#number.to_s.split("").each do |n|
#		product *=n.to_i
#	end
#	number = product
number = number.to_s.split("").map! {|n| n.to_i}.inject(:*)
end
puts number
