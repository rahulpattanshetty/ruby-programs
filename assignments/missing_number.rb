input = [1,2,3,5,7,8,10]
missing_no = input.first
input.each do |number|
	if number == missing_no
		missing_no += 1
	else
		puts missing_no
		missing_no += 1
		if missing_no == number
			missing_no += 1
		end
	end
end

