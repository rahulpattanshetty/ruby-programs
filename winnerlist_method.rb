def winnerList(winner_list,team_name,country_name)
count = 0
team_n = ""
winner_list.each do |winner|
	if winner["country"] == country_name && 
		winner["team"] == team_name
		team_n = winner["team"] 
		count +=1
	end
end
puts "#{team_n} - #{count}"
end

winner_list = 
[{
	"team" => "real madrid", 
	"country" => "spain"
},
{
	"team" => "real madrid", 
	"country" => "spain"
},
{
	"team" => "barcelon", 
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

puts "Enter the country name"
country_name = gets.chomp

teams = []
winner_list.each do |hash|
	if hash["country"] == country_name
		teams.push(hash["team"])
	end
end
puts "Teams in - #{country_name} are = #{teams.uniq}"

puts "Enter the team name"
team_name = gets.chomp
puts winnerList(winner_list,team_name,country_name)

