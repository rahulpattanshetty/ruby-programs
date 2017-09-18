=begin
	
 Input:
2
11
1 2 3 4 5 6 5 4 3 2 1
9
1 3 4 5 7 8 9 5 2 

Output:
6
9

first_num = input.first
max = input.max
input.each do |num|
	if num == first_num
		first_num +=1
	else
		puts first_num-1
		break
	end		
end
=end
#input = [1, 3, 4, 5, 7, 8, 9, 5, 2]
input = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]
#input = [1]
if input.length > 1
	puts input.max
end
