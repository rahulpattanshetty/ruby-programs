=begin
Given an array A [ ] having distinct elements, the task is to find the next greater element for each element of the array in order of their appearance in the array. If no such element exists, output -1 
Example:
Input
1
4
1 3 2 4 
Output
3 4 4 -1
Explanation
In the array, the next larger element to 1 is 3 , 3 is 4 , 2 is 4 and for 4 ? since it doesn't exist hence -1.
[11,13,21,3]
=end
def larger(numbers)
	numbers.each do |number|
		if  number > numbers.first
			puts number
			numbers.shift(1)
			larger(numbers)
		elsif number == numbers.max || number==numbers.last
				puts -1
		end
	end
end

#input = [1]
#larger(input)

#input = [4]
#larger(input)

input = [11,13,21,3]
larger(input)

