def scramble(str1,str2)
flag = ""

str2.split("").each do |letter|
	if str1.count(letter) == str2.count(letter) 
		flag = "true"
	else
		return false
	end
end
return flag
end
puts scramble("rkqodlw","world")
puts scramble("katas","steak")
puts scramble("dorfd","food")




