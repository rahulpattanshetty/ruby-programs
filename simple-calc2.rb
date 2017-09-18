puts "Enter your name"
name = gets.chomp #by default gets reads the value as string, .chomp removes the new line (#n) character 


puts "welcome " + name
puts "enter no n1"
n1=gets.to_i # to_i is used for type conversion from string to integer
puts "enter no n2"
n2=gets.to_i # to_i is used for type conversion from string to integer
puts n1 + n2