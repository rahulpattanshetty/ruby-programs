class Student
#first_name,last_name,age,gender
#sets up the reader method
#attr_reader :first_name,:last_name,:age,:gender
#sets up the writer method
#attr_writer :first_name,:last_name,:age,:gender

#this creates both readers and writers
attr_accessor :first_name, :last_name, :age, :gender

end


s1 = Student.new

s1.first_name = "rahul"
puts s1.first_name

s1.last_name = "pattanshetty"
puts s1.last_name

s1.age = 24
puts s1.age

s1.gender = "male"
puts s1.gender