#method definition in ruby

def add(n1,n2)#here n1&n2 are known as paramters
	puts "hello"
	return n1 + n2 #return keyword is optional because,the last statement executed in a method will be returned value
	puts "hello"
end

puts add(10,20) #10 & 20 are known as arguments
add(10,20)
puts add("hello","world")
puts add("hello",10.to_s)
puts add "hi","rahul"
#result = add(30,40)
#puts result
#add(40,50)