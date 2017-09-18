sentence="this is a sentence"
words=sentence.split(" ")
shortest_word_length=words.first.length #words[0].length
#puts shortest_word_length

words.each do |word|
	if word.length < shortest_word_length
		shortest_word_length = word.length
	end
end
puts shortest_word_length