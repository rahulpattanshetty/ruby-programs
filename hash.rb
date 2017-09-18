mobile_hash = {
	#key => value
	"teja" => "9676711341",
	"rahul" => "9591625269",
	"shreekanth" => "9440035332",
	"sharat" => "9636711323",
	"harsh" => "9636711324",
	"shiv" => "123234233"

}
mobile_hash["mani"] = "12345656"

mobile_hash.each do |name,mobile|
	puts "#{name} - #{mobile}"
end

puts "KEYS:#{mobile_hash.keys}"
puts "VALUES:#{mobile_hash.values}"
puts mobile_hash.key("9591625269")
if mobile_hash.value?("9591625269")
	puts mobile_hash.key("9591625269")
else mobile_hash.key?("teja")
	puts mobile_hash.key("9591625269")
end

