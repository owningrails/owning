class RoomsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @rooms = current_user.account.rooms
  end
  
  def show
    @room = current_user.account.rooms.find(params[:id])
  end
end
