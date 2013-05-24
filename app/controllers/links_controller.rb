class LinksController < ApplicationController
	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			flash[:success] = "Story submitted"
			redirect_to @link
		else
			render 'show'
		end
	end
end
