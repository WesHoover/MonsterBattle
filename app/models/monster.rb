class Monster < ActiveRecord::Base


# Sets up the battle logic between any two given monsters
	def combat(monster1, monster2) 
		if(monster1.attack > monster2.attack) # monster.attack is an integer stat held by each users' monster(s), the greater of the two wins
			puts("1 wins")
		elsif(monster2.attack > monster1.attack)
			puts("2 wins")
		else
			puts("Tie")	
		end
	end	
		

# Setting up the initial attack and defense power stat for each monster to a random value between 1 and 10. 

	def stats(newMonster) 
		newMonster.attack = random(1..10) # Currently only using attack for simplicity and ease of implementation in battle logic
		newMonster.defense = random(1..10)
	end	
end