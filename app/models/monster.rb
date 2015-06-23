class Monster < ActiveRecord::Base
	def combat(monster1, monster2)
		if(monster1.attack > monster2.attack)
			puts("1 wins")
		elsif(monster2.attack > monster1.attack)
			puts("2 wins")
		else
			puts("Tie")	
		end
	end	
		
end

	def stats(newMonster)
		newMonster.attack = random(1..10)
		newMonster.defense = random(1..10)
	end	