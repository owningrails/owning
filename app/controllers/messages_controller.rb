class MessagesController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :js
  
  def create
    @room = current_user.account.rooms.find(params[:room_id])
    @message = @room.messages.build(params[:message])
    @message.user = current_user
    
    if @message.save
      # Publish to the Faye backend.
      @room.publish request.host_with_port, @message
    end
    
    respond_with @message
  end
end
