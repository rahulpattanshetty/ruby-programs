puts "Enter your name" 
name=gets #gets is used to get the name dynamically

puts "welcome " + name #puts is used to print name

target=(rand(1..100)) #Generating random number from 1 to 100 and assigning it to target


i=1
max_guess=10 #To keep track of guess



high=100
low=1
puts "Target number is #{target}"
while i<=10
	puts "Guess the number #{low} to #{high}"
	guess=gets.to_i 
	if guess > target
		high=guess
		i+=1
	elsif guess < target
		low=guess
		i+=1
	elsif guess==target
		puts "Good job," + name + "you guessed my number in #{i} guesses!"
		break
	else i==10
		puts "Sorry.You didnt get my number.My number was"
		puts target
		i=i+1
	
	end
end