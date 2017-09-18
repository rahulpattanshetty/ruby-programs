fighters = [["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]]

#initial_position = (0,0)

#moves = ['up', 'left', 'right', 'left', 'left']
moves = ['right', 'down', 'left', 'left', 'left', 'left', 'right']

x = 0
y = 0
result = []
moves.each do |move|
	if move == 'up'
		x=0
	elsif move == 'down'
		x = 1
	elsif move == 'left'
		y -= 1
	elsif move == 'right'
		y += 1
	end
	result.push(fighters[x][y])
end
puts "#{result}"