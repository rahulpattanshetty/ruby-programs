class Person
	attr_accessor :first_name,:last_name
	def initialize(details)
		@first_name = details[:first_name]
	 @last_name = details[:last_name]
	end
	def details
		"'Hello,#{first_name.capitalize} #{last_name}!'"
	 
	end
end

p=Person.new({first_name:"rahul", last_name:"Pattanshetty"})
puts p.details