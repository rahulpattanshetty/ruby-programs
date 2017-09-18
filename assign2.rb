

names=["Sheldon","Leonard","Penny","Rajesh","Howard"]
puts "Roles: #{names}"
puts "How many times"
num=gets.to_i


i=0
while i < num
	name=names.shift(1)
	names.push(name,name)
	i+=1
end
names.flatten!

puts "Queue is#{names}"

res=names[0].to_s

puts "Result=#{res}"