numbers = 234
n = numbers.to_s.split("")

output = 1
result = 1
numbers.to_s.split("").each do |num|
	output *= num.to_i
	if output.to_s.split("").length > 1
		output.to_s.split("").each do |n|
			result *= n.to_i
		end
	end
end
puts output
puts result