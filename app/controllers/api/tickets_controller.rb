module Api
  class TicketsController < ApplicationController

    before_action :authenticate_user!

    before_action :set_ticket, only: [:update, :destroy]

    # GET /tickets
    # GET /tickets.json
    def index
      @tickets = current_user.tickets
      render json: @tickets
    end

    # POST /tickets
    # POST /tickets.json
    def create
      @ticket = Ticket.new(ticket_params)

      respond_to do |format|
        if @ticket.save
          format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
          format.json { render :show, status: :created, location: @ticket }
        else
          format.html { render :new }
          format.json { render json: @ticket.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /tickets/1
    # PATCH/PUT /tickets/1.json
    def update
      if @ticket.update(ticket_params)
        render json: @ticket, status: :ok
      else
        render json: @ticket.errors, status: :unprocessable_entity
      end
    end

    # DELETE /tickets/1
    # DELETE /tickets/1.json
    def destroy
      @ticket.destroy
      respond_to do |format|
        format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_ticket
        @ticket = Ticket.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def ticket_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:title, :description, :status])
        # params.require(:ticket).permit(:title, :description, :status)
      end
  end
end
