class MatchesController < ApplicationController
	def index 
		@matches = Match.all
	end

	def new 
		@match = Match.new
	end

	def create
		@match = Match.new(match_params)
	end

	def user_matches  
		@matches = Match.personal_matches(current_user)
	end 

end