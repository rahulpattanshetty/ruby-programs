hash = {
	"shirts" => 11,
	"shoe" => 7
}
a = [1,2,3,4]


puts hash.has_key?"shoe"
puts hash.has_key?"pen" #false

puts hash.has_value?11
puts hash.has_value?1 #false

puts a.empty? #false
puts a.include?4 #true
puts a.include?5 #false