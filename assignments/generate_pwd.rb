puts "Enter the length of the password"
password_len=gets.to_i
puts "Enter the length for special characters"
special_char_len=gets.to_i
puts "Enter the length for numbers"
numbers_len=gets.to_i

numbers = (1..9).to_a
alphabets = ('A'..'Z').to_a + ('a'..'z').to_a
special_chars = ('!'..'+').to_a
alpha_counts = password_len - special_char_len - numbers_len

5.times do
	password=numbers.shuffle.take(numbers_len) + alphabets.shuffle.take(alpha_counts) + special_chars.shuffle.take(special_char_len)

	puts password.shuffle.join
end