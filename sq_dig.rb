require 'pry'
number = 9119
output = []
number.to_s.split("").each do |num|
	#binding.pry
	output.push(num.to_i * num.to_i)
	
end
puts output.join("")