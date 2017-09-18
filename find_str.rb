words = ["virat","sachin"]
puts "enter the string to search"
search_word = gets.chomp

result = words.find {|word| word == search_word}

if result.nil?
	puts "#{search_word} is not found"
else
	puts "#{search_word} is found"
end