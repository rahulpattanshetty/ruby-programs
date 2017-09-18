hash = {
	:rahul => "9591625269",
	:teja => "9591621219"
}

puts hash[:rahul]

hash.each do |key,value|
	puts "#{key.class} #{key} #{value}"
end
