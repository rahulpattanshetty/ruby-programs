player1="Dhawan"
player2="Rohit"
player3="virat"
player=["Dhawan", "Rohit", "virat"]

numbers=[10,25,15,9,35,30,40.5]

puts player[0] #Dhawan
puts player[1] #Rohit
puts player[2] #virat
puts player[3] #nil

#string interpolation
puts "total nos #{numbers.length}"

#sort asc
puts "sort asc#{numbers.sort}"
puts "number:#{numbers}"

#sort dsc
puts "sort dsc#{numbers.sort.reverse}"
puts "number:#{numbers}"

puts "change the array #{numbers.sort!}"
puts "Number:#{numbers}"

#Mutable methods, changes the state of the array
#add 3 numbers

#adds the value at the end of the array
numbers.push(3)
puts "Numbers:#{numbers}"

numbers.push(55,2)
puts "Numbers:#{numbers}"

#adds the value at the beginning of the array
numbers.unshift(100)
puts "Numbers:#{numbers}"

#insert the value at the index(2,10) 2 is an index where as 10 is a value
numbers.insert(2,200)
puts "Numbers:#{numbers}"

#numbers.insert(20,400)#if value is not present in the index it will show nil
#puts "Numbers:#{numbers}"

#removes the last 2 values of the array
puts numbers.pop(2)
puts "Numbers:#{numbers}"

#removes the values from the beginning
puts numbers.shift(3)
puts "Numbers:#{numbers}"

#deletes the values at a certain index
puts numbers.delete_at(3)
puts "Numbers:#{numbers}"

#removes the all occurence of the value from the array,when index is not known
numbers.delete(200)
puts "Numbers:#{numbers}"


=begin
array.include?(element) # preferred method
array.member?(element)
array.to_set.include?(element)
array.to_set.member?(element)
array.index(element) > 0
array.find_index(element) > 0
array.index { |each| each == element } > 0
array.find_index { |each| each == element } > 0
array.any? { |each| each == element }
array.find { |each| each == element } != nil
array.detect { |each| each == element } != nil

=end



