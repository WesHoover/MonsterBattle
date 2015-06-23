class Match < ActiveRecord::Base
	def personal_matches(current_user) 
		self.where("monster1 = current_user.id OR monster2 = current_user.id")
	end
end