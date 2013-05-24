class VotesController < ApplicationController
	def create
		@vote = current_user.votes.new(params[:vote])
		@vote.save
	  	redirect_to :back
	end
end
