#n1 and n2 are local variable that can not be accessed directly inside the method
n1 = 10
n2 = 20
n3 = 50
def add(num1,num2)#num1 and num2 are local variables inside the method, these parameters cannot be accessed outside the method
num1+num2
end
#puts num1,parameters for a method cannot be accessed outside the method

#the local variables can be passed to the method for some kind of processing,via passing as an arguments to the method call
puts add(n1,n2)
#the number of parameter should match the number of arguments

#the arguments name and parameters name need not match
#the order in which we the pass the value matter
=begin
here n1 is assigned to num1 and n2 is assigned to num2	
	
=end