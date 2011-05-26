class TicketsController < ApplicationController
  before_filter :find_ticket, :only => [:show, :edit, :update, :destroy]
  
  respond_to :html, :xml, :json
  
  def index
    @tickets = Ticket.scoped

    respond_with @tickets
  end

  def show
    respond_with @ticket
  end

  def new
    @ticket = Ticket.new

    respond_with @ticket
  end

  def edit
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    @ticket.save
    
    respond_with @ticket
  end

  def update
    @ticket.update_attributes(params[:ticket])
    
    respond_with @ticket
  end

  def destroy
    @ticket.destroy
    
    respond_with @ticket
  end
  
  private
    def find_ticket
      @ticket = Ticket.find(params[:id])
      
    end
end
