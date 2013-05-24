class VotesController < ApplicationController
	def create
		if current_user
			@vote = Vote.where(link_id: params[:vote][:link_id], user_id: current_user.id).first

			if @vote
			  @vote.up = params[:vote][:up]
			  @vote.save
			else
			  @vote = current_user.votes.create(params[:vote])
			end
		end
		redirect_to :back
	end
end
