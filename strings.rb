first_name="rahul"
middle_name="ramesh"
last_name="patt"

puts first_name+" "+last_name #concatenation

puts first_name.capitalize #Rahul

puts first_name.upcase #RAHUL 
puts last_name.upcase #PATT

puts last_name.downcase #patt

puts first_name.length #length=5

puts "the length of my name is "+ first_name.length.to_s
#assciation proxy-ability to chain methods in ruby(method to another method)

puts middle_name.reverse # reverse the string

#comma separted
tags="python, ruby, javascript"
languages=tags.split(", ")#["python","ruby","javascript"] separted using common and space

puts languages

#with spaces
players="virat virat sachin-virat"
names=players.split(" ") #["virat","virat","sachin-virat"]

puts names

#without spaces
word="apple"
fruit=word.split("") #["a","p","p","l","e"]
puts fruit 

puts fruit.count('a') #counts the number of a present in the array

puts word.count('aeiou')

puts names + ["hi"]