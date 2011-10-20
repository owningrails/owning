class RoomsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_room, :only => [:show, :edit, :update, :destroy]
  
  respond_to :html, :json
  
  def index
    @rooms = rooms
    
    respond_with @rooms
  end
  
  def show
    respond_with @room
  end
  
  def new
    @room = Room.new
    
    respond_with @room
  end
  
  def edit
    respond_with @room
  end
  
  def create
    @room = Room.create(params[:room])

    respond_with @room
  end

  def update
    @room.update_attributes(params[:room])
    
    respond_with @room
  end

  def destroy
    @room.destroy

    respond_with @room
  end
  
  private
    def rooms
      current_user.account.rooms
    end
    
    def find_room
      @room = rooms.find(params[:id])
    end
end
