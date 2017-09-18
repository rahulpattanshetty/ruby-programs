require 'pp'
def guessGifts(wishlist, presents)

	result = []
	wishlist.each do |wish|
		presents.each do |pres|
			if pres.values == wish.values[1..-1]
				result.push(wish[:name])
			end
		end
	end
	return result 	
end


wishlist = [{name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},{name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},{name: "Card Game", size: "small", clatters: "no", weight: "light"}];

presents = [{size: "medium", clatters: "a bit", weight: "medium"},{size: "small", clatters: "yes", weight: "light"}];

 puts guessGifts(wishlist, presents)