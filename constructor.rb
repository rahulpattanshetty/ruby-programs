class Movie
	attr_accessor :name,:language,:release_date

	#constructor
	def initialize(name,language,release_date)
		@name = name
		@language = language
		@release_date = release_date

	end
	def details
		"#{name} - #{language} - #{release_date}"
	end
end
m1 = Movie.new("kirk Party","kannada","2016-12-10")#method invokes constructor

puts m1.details


