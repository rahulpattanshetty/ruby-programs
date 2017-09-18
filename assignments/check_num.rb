$flag = 0

def booking(b)
	nums=(7..12).to_a	
	nums.each do |num|
		if b.include?num
			return	$flag = 1
		end	
	end	
end
puts "Enter check in"
n1=gets.to_i
puts "Enter check out"
n2=gets.to_i
b=(n1..n2).to_a
booking(b)
if $flag == 0
	puts "Booking successfully"
else
	puts "Error while booking"
end