class Product
	attr_accessor :name,:price,:category

	def initialize(name,price,category)
		@name = name
		@price = price
		@category = category
	end
	def details
		"#{category}- #{name} - #{price} "
	end
end

p1 = Product.new("Moto",7000,"mobiles")
puts p1.details