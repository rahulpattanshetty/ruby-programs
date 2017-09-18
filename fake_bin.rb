given = 463278

number = given.to_s.split("")
output = []
number.each do |n|
		if n.to_i >= 5
			output.push(1)
		else 
			output.push(0)
		end

end
puts output.join()
