#find all the products price < 499
#find all products whos category = kids
#find all the products category = kids and product price is 250 to 750
require 'faker'
class Product
	attr_accessor :name,:price,:description,:category,:availability
	@@count = 0
	def initialize(details)
		@name = details[:name]
		@price = details[:price]
		@description = details[:description]
		@category = details[:category]
		@availability = details[:availability]
	end

	def details
			
			"#{@@count += 1}  #{name} -INR#{price}-#{category}"
		
	end
end

products = []
100.times do
	product_details = {
		:name => Faker::Commerce.product_name,
		:price => Faker::Commerce.price(0..750),
		:description => Faker::Lorem.paragraph[0..5],
		:category => Faker::Commerce.department(1),
		:availability =>Faker::Boolean.boolean
	}
	product = Product.new(product_details)
	products.push(product)
end

puts "Products less than 499 are"
products.each do |product|
	puts"#{product.details}" if product.price < 499 
end
puts "**********************************************"
puts "Product belongs to kids are"
products.each do |product|
	if product.category == "Kids"
		puts "#{product.details}"
	end
end

puts "**********************************************"
puts "Products price bw 250&750 and category belongs to kids are"

products.each do |product|
	if (product.category == "Kids" && product.price > 250)
		puts "#{product.details}"
	end
end

puts "**********************************************"
puts products.find_all {|n| n.price < 499}
