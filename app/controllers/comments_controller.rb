class CommentsController < ApplicationController
  respond_to :js
  
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.build(params[:comment])
    @comment.user = current_user
    @comment.save
  end
end
