winner_list = 
[{
	"team" => "real madrid", 
	"country" => "spain"
},
{
	"team" => "man u" ,
	"country" => "england"
},
{
	"team" => "man u" ,
	"country" => "england"
},
{
	"team" => "new castle" ,
	"country" => "england"
}
]
#puts winner_list[0] it returns 
=begin
{
	"team" => "real madrid", 
	"country" => "spain"
}	
=end
#winner_list.class => Array
#winner_list[0].class => hash
puts "Enter the country name"
country_name = gets.chomp
puts "Teams in - #{country_name} are"
teams = []
winner_list.each do |hash|
	if hash["country"] == country_name
		teams.push(hash["team"])
	end
end
puts teams.uniq
puts "Enter the team name"
team_name = gets.chomp

count = 0
team_n = ""
winner_list.each do |winner|
	if winner["country"] == country_name && 
		winner["team"] == team_name
		team_n = winner["team"] 
		count +=1
	end
end
puts "Result:#{team_n} - #{count} times"
