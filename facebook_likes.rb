likes =["rahul","sumit","pavan","yogi"]

if likes.empty?
	puts "no one likes this"
elsif likes.length == 1
	puts "#{likes[0]} likes this"
elsif likes.length == 2
	puts "#{likes[0]} and #{likes[1]} like this"
elsif likes.length == 3
	puts "#{likes[0]},#{likes[1]} and #{likes[2]}  like this "
#elsif likes.length >= 4
else 
	puts "#{likes[0]},#{likes[1]} and #{likes.length - 2} others like this "
end
