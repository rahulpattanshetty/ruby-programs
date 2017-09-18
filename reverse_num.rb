number = 348597
output = []

#ability to chain methods in ruby is known as association proxy,this works because whenever we invoke a method on odject, it returns a new object
number.to_s.reverse.split("").each do |num|
	output.push(num.to_i)
end

puts "output: #{output}"

=begin
1st 
number.to_s
=>"348597"

2nd
"348597".reverse
=>"975843"

3rd
"975843".split("")
=>["9","7","5","8","4","3"]

=end