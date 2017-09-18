=begin

Given three arrays sorted in non-decreasing order, print all common elements in these arrays.

Output:
Single line output, Print the common elements of array. If not possible then print -1.

 

Example:
Input:
1
[[1, 5 ,10, 20, 40, 80],[ 6, 7, 20, 80, 100],[3,4, 15, 20, 30 ,70, 80 ,120]]

Output:
20 80


=end


input = [[1, 5 ,10, 20, 40, 80],[ 6, 7, 20, 80, 100],[3,4, 15, 20, 30 ,70, 80 ,120]]


len = input.length 
input.flatten!

array = []
input.each do |num|
	if input.count(num) == len
		if !(array.include?num)
			array.push(num)
		end
	end
end
if array.empty?
	puts -1
end
puts array

=begin
hash = {}
i =0
input.uniq.each do |number|
	hash[number] = input.count(number)
	if input.count(number) < input.length
		i +=1
	end
end  
if i == input.length
	puts -1
end
hash.each do |key,value|
	if value == len
		puts key
	end
end	
=end