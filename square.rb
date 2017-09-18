square_num="9119"
number=square_num.split('')

len=number.length
puts len
i=0
while i<len
	n1=number[i].to_i
	n1*=n1
	number[i]=n1.to_s
	i+=1

	n2=number[i].to_i
	n2*=n2
	number[i]=n2.to_s
	i+=1

	n3=number[i].to_i
	n3*=n3
	number[i]=n3.to_s
	i+=1

	n4=number[i].to_i
	n4*=n4
	number[i]=n4.to_s
	i+=1

	puts number.join("")
end