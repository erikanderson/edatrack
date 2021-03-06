class TicketsController < ApplicationController

before_action :authenticate_user!

def index
  @tickets = Ticket.all
end

def new
  @ticket = Ticket.new
end

def create
  @ticket = Ticket.new(ticket_params)
  if @ticket.save
    flash[:notice] = "Ticket created successfully"
    redirect_to @ticket
  else
    render('new')
  end
end

def show
  @ticket = Ticket.find(params[:id])
end

def edit 
end

def update
end

def delete
end

def destroy
end

  private

  def ticket_params
    params.require(:ticket).permit(:title,:text)
  end

end
