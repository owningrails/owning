class MessagesController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :js
  
  def create
    @room = current_account.rooms.find(params[:room_id])
    @message = @room.messages.build(params[:message])
    @message.user = current_user
    
    if @message.save
      @room.publish request.host_with_port, @message.to_publishable
    end
  end
end
