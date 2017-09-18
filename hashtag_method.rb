def hashtag(sent)
result = "#"
	if sent.empty?
		return false
	else 
		sent.split(" ").each do |word|
			result += word.capitalize
		end
	end
	return (result.length > 140) ? false : result
end
sentence = "Hello there thanks for trying my kata"
puts hashtag(sentence)