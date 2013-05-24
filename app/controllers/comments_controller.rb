class CommentsController < ApplicationController

  #method given by devise
  before_filter :authenticate_user!

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
  	@comment = current_user.comments.new(params[:comment])

  	if @comment.save
  		flash[:success] = "Comment submitted"
  		redirect_to action: 'show', id: params[:comment][:link_id], controller: "links"
  	else
  		redirect_to 'show'
  	end
  end
end