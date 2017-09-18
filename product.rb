class Product
	def name=(r_name)
		@name = r_name
		#value to an instance variable can be assigned/ read only via methods
	end
	def name
		@name
	end
	def price=(r_price)
		@price = r_price
	end
	def price
		@price
	end
	def category=(r_category)
		@category = r_category
	end
	def category
		@category
	end
end
products = []
p1 = Product.new
p1.name = "Moto"
p1.price = 9999
p1.category = "Mobiles"
products.push(p1)

p2 = Product.new
p2.name = "samsung"
p2.price = 7777
p2.category = "Mobiles"
products.push(p2)

p3 = Product.new
p3.name = "iphone"
p3.price = 20000
p3.category = "Mobiles"

products.push(p3)

products.each do |product|
	puts "#{product.name} Prices:#{product.price}"

end

