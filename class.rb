#blueprint
class Restaurant
	#attributes/properties
	#methods/behaviours
	#instance variable=are value held inside an object,it is represented using @

	#this is writer method
	def name=(r_name)
		#here @name is an attribute of an object,it is also known as an instance variable
		@name = r_name
		n=r_
		#by default the value Instance Variable will be nil
	end

	#this is reader method
	def name 
		@name
	end

	def location=(r_location)
		@location = r_location
	end
	def location
		@location.upcase
	end
	def phone_num=(r_phone_num)
		@phone_num = r_phone_num
	end
	def phone_num
		puts "Ph_num=#{@phone_num}"
	end
end

r1 = Restaurant.new
r1.name = "adigas" #writer method
r1.location = "Jayanagar"
r1.phone_num = 134533451
puts r1.class
puts r1.name #reader method
puts r1.location
puts r1.phone_num


r2 = Restaurant.new 
r2.name = "Mc Donalds" #writer method
r2.location = "JP Nagar"
puts r2.class
puts r2.name #reader method
puts r2.location


r3 =Restaurant.new
r3.name = 1234
puts r3.name

