#setting default value to the arguments
def calc_total(total,loyality_points=5,discount=10)
	return total - (total * discount / 100)
end
puts calc_total(100)
puts calc_total(1000,100,25)
puts calc_total(1000,100,30)

puts "---------passing argument as hash-------------"
def cal_total_hash(details)
	total = details[:total]
	loyality_points = details[:loyality_points].nil? ? 5 : details[:loyality_points]
	#details.has_key?(:loyality_points) ? details[:loyality_points] : 5
	discount = details[:discount].nil? ? 10 : details[:discount]
	return total - (total * discount / 100)

end

puts cal_total_hash({:total => 100})
puts cal_total_hash({:total => 1000,:discount => 25})
puts cal_total_hash({:total => 1000,:loyality_points => 100,:discount => 30})