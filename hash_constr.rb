class Movie
	attr_accessor :name,:language,:release_date

	def initialize(details)#we are passing hash as arguments
		@name = details[:name]
		@language = details[:language]
		@release_date = details[:release_date]
	end
	def details
		"#{name} - #{language} -#{release_date}"
	end
end

movie1_param = {:name => "Dunkrik", :language => "English", :release_date => "2017-07-21"}
m1 = Movie.new(movie1_param)
puts m1.details
movie2_param = {:name => "logan" ,:language => "English"}
m2 = Movie.new(movie2_param)
puts m2.details

movie3_param = {}
m3 = Movie.new(movie3_param)
puts m3.details
