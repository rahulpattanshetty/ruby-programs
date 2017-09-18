require 'pry'

numbers=[10,20,30]
sum=0
binding.pry 
numbers.each do |number|
	binding.pry
	sum+=number
	binding.pry
	
end
puts "Total=#{sum}"