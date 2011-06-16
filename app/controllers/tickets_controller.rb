class TicketsController < ApplicationController
  before_filter :find_ticket, :only => [:show, :edit, :update, :destroy]
  
  respond_to :html, :xml
  
  # GET /tickets
  # GET /tickets.xml
  def index
    @tickets = Ticket.scoped
    
    respond_with @tickets
  end

  # GET /tickets/1
  # GET /tickets/1.xml
  def show
    respond_with @ticket
  end

  # GET /tickets/new
  # GET /tickets/new.xml
  def new
    @ticket = Ticket.new
    
    respond_with @ticket
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.xml
  def create
    @ticket = Ticket.create(params[:ticket])
    
    respond_with @ticket
  end

  # PUT /tickets/1
  # PUT /tickets/1.xml
  def update
    @ticket.update_attributes(params[:ticket])
    
    respond_with @ticket
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.xml
  def destroy
    @ticket.destroy
    
    respond_with @ticket
  end
  
  private
    def find_ticket
      @ticket = Ticket.find(params[:id])
    end
end
