require './category'
require './product'
require 'faker'
require 'pp'
require 'pry'
categories = []
10.times do
 	category_param = {
 		:name =>Faker::Commerce.department(1)
 		}
 		category = Category.new(category_param)
 		categories.push(category)	
end

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

#categories.find_all{|category| category.id== product.category_id}
=begin
product_hash = {}

categories.each do |category|
	products.each do |product|
		if category.id == product.category_id
			product_hash[category.name] = products.find_all {|prod| prod.category_id == category.id }  
		end
	end
end
products.each do |product|
		puts "#{product.name}- INR #{product.price}" if category.id == product.category_id

	end
end

pp product_hash
=end
categories.each do |category|
	puts category.name
	puts "*"*50
	count = 0
	products.find_all {|product| puts "#{count+=1} #{product.name}-INR #{product.price}" if product.category_id == category.id}
	puts "-"*50
end