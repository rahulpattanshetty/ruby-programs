class Student
	
	def name=(s_name)
		@name = s_name
				
	end

	def name 
		puts @name
		puts @rollno
	end
end
r1 = Student.new
r1.name = "aww"
r1.name