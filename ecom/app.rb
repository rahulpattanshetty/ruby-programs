require './category'
require './product'
require 'faker'

c1 = Category.new({:name => "Sports"})
c2 = Category.new({:name => "Gardening"})

categories = []
10.times do
 	category_param = {
 		:name =>Faker::Commerce.department(1)
 		}
 		category = Category.new(category_param)
 		categories.push(category)	
end

categories.push(c1,c2)



products = []
100.times do
	product_param = {
		:name => Faker::Commerce.product_name,
		:price =>Faker::Commerce.price(50..250),
		:category_id => categories.sample.id
	}
	product = Product.new(product_param)
	products.push(product)
end
p1 = Product.new({:name => "BasketBall", :price => 1000, :category_id => c1.id})
p2 = Product.new({:name => "Football", :price => 750, :category_id => c1.id})
p3 = Product.new({:name => "Shoven", :price => 300, :category_id => c2.id})

products.push(p1,p2,p3)

puts "Listing of categories"
puts "*" * 50
categories.each {|category| puts category.details}

puts "*" * 50
puts "Listing of products"
puts "*" * 50
products.each do |product|
	puts "#{product.name} - INR #{product.price} - #{categories.find {|category| category.id == product.category_id}.name}"
end
puts "*" * 50