class RoomsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_room, :only => [:show, :edit, :update, :destroy]
  
  respond_to :html, :json
  
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all

    respond_with @rooms
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    respond_with @room
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @room = Room.new

    respond_with @room
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.create(params[:room])
    
    respond_with @room
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    @room.update_attributes(params[:room])
    
    respond_with @room
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy

    respond_with @room
  end
  
  private
    def find_room
      @room = Room.find(params[:id])
    end
end
