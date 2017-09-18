input = " Hey fellow warriors"
str = ""
input.split(" ").each do |word|
	if word.length >= 5
		 str += "#{word.reverse} "
		
 		else
			str += "#{word} "
	end
end
puts "Output: #{str}"

#2nd approach output as array
output = []
words = input.split(" ")
#["Hey","fellow","warriors"]
words.each do |word|
	if word.length >= 5
		output.push(word.reverse)
	else
		output.push(word)
	end
end 
puts "output: #{output.join(" ")}" 
 
