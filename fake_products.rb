require 'faker'
class Product
	attr_accessor :name,:price,:description,:category,:availability

	def initialize(details)
		@name = details[:name]
		@price = details[:price]
		@description = details[:description]
		@category = details[:category]
		@availability = details[:availability]
	end
	def details
		if availability
		"#{name}-INR #{price}-  #{category} **#{description} ===Product is available"
	else
		"#{name}-INR #{price}-  #{category} **#{description} ===Product is not available"
	end
	end
end

products = []
100.times do
	product_details = {
		:name => Faker::Commerce.product_name,
		:price => Faker::Commerce.price(50..1000),
		:description => Faker::Lorem.paragraph[0..5],
		:category => Faker::Commerce.department(1),
		:availability =>Faker::Boolean.boolean
	}
	product = Product.new(product_details)
	products.push(product)
end

products.each_with_index do |product,index|
	puts "#{index + 1}. #{product.details}"
end