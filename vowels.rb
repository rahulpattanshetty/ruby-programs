sentence = "Now is the time for all good people"
=begin
using case staements
	1.total vowels in a sentence
	2.total uniq vowels
	3.Total vowel count 
=end
letters = sentence.split("")
vowels = {:a => 0,
	:e => 0,
	:i => 0,
	:o => 0,
	:u => 0

}
letters.each do |letter|
case letter
	when "a"
		vowels[:a] +=1
	when "e"
		vowels[:e] +=1
	when "i"
		vowels[:i] +=1
	when "o"
		vowels[:o] +=1
	when "u"
		vowels[:u] +=1
	end	
end
puts "Total vowels=#{vowels.values.inject(:+)}"
puts "uniq vowels=#{vowels.select { |k,v| v != 0 }.keys}"
puts "Total vowel count=#{vowels}"
