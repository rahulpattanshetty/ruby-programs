def arithmetic(a,b,operator)
	result = nil
	case operator
	when "add"
		result = a+b
	when "subtract"
		result = a-b
	when "multiply"
		result = a*b
	when "divide"
		result =a/b
	end
	return result
end
puts arithmetic(5,2,"add")
puts arithmetic(5,2,"subtract")
puts arithmetic(5,2,"multiply")
puts arithmetic(5,2.to_f,"divide")