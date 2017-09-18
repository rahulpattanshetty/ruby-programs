puts "Enter the sentence"
sentence = gets.chomp


if sentence == ""
	puts false
else
	words=sentence.split(" ")
	output = "#"
	
	words.each do |word|
		output = output + word.capitalize
	end

	if output.length > 140
		puts false 
	else
		puts output
	end
end
