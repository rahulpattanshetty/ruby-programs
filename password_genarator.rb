numbers = (0..9).to_a 
alphabets = ('A'..'Z').to_a + ('a'..'z').to_a
special_char = ('!'..'+').to_a
puts "Enter the length of the password"
password_length = gets.to_i
puts "Enter special chars required"
special_char_count = gets.to_i
puts "Enter numbers required"
numbers_count = gets.to_i

alphabets_count = password_length - special_char_count - numbers_count

5.times do 
	password = numbers.shuffle.take(numbers_count) + alphabets.shuffle.take(alphabets_count) + special_char.shuffle.take(special_char_count)
#take method will take values from the array,shuffle method randomize the array
	puts password.shuffle.join("")

end
