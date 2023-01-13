class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end 
    def show 
        ticket = Ticket.find(params[:id])
        render json: ticket, status: :ok
    end 

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end 

    private

    def ticket_params
        params.permit(:production_id, :user_id, :price)
    end 
end
