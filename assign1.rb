puts "Enter your name" 
name=gets #gets is used to get the name dynamically

puts "welcome " + name #puts is used to print name

target=(rand(1..100)) #Generating random number from 1 to 100 and assigning it to target


i=1
count=10 #To keep track of guess

puts "Guess the number 1 to 100"

while i<=10
	guess=gets.to_i # gets.to_i is a type conversion used to convert string to integer
	
	

	if guess > target
		puts "Oops.Your guess was high"
		count=count-1
		i=i+1
		puts "you have #{count} guesses out of 10" #to insert the value of variable into double quote, use 
		high=guess
		puts "Guess between 1 to #{high}"
		
	elsif guess<target
		puts "Oops.Your guess was low"
		count=count-1
		i=i+1
		puts "you have #{count} guesses out of 10"
		low=guess
		puts "Guess between #{low} to #{high}"
		
	elsif guess==target
		puts "Good job," + name + "you guessed my number in #{i} guesses!"
		i=11

	else i==10
		puts "Sorry.You didnt get my number.My number was"
		puts target
		i=i+1
	
	end
end