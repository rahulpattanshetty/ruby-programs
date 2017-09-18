players = "virat virat virat sachin sachin rahul"
=begin
output
virat - ***
sachin - **
rahul - *

=end

virat_count = 0
sachin_count = 0
rahul_count = 0

names = players.split(" ")
#names holds ["virat","virat","virat","sachin","sachin","rahul"]

#virat_count = names.find_all { |name| name == "virat"}.length
virat_count = names.count("virat")
sachin_count = names.count("sachin")
rahul_count = names.count("rahul")


puts "virat - #{"*" * virat_count}"
puts "sachin - #{"*" * sachin_count}"
puts "rahul - #{"*" * rahul_count}"


#Reading the string from the keyboard
puts "Enter the string"
p1 = gets.chomp
p2 = p1.split(" ")
p3 = []
p2.uniq.each do |name|
	p3.push([name, p2.count(name)])
end
puts "#{p3}"
