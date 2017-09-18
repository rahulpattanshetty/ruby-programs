require 'pry' #debugging code
puts "Enter the string"
words = gets.chomp
array = words.split(" ")
result = []
array.uniq.each do |name|
	binding.pry
	result.push([name, array.count(name)])
	binding.pry
end
puts "#{result}"

result.each do |sub_array|
	puts "#{sub_array.first} : #{"*" * sub_array.last}"
end