module Api
  class TicketsController < AuthenticatedController
    before_action :set_ticket, only: [:update, :destroy]

    def index
      @tickets = if current_user.admin?
                   Ticket.all
                 else
                   @tickets = current_user.tickets
                 end

      render jsonapi: @tickets
    end

    def show
      @ticket = if current_user.admin?
                  Ticket.find(params[:id])
                else
                  current_user.tickets.find(params[:id])
                end
      render jsonapi: @ticket
    end

    def create
      @ticket = current_user.tickets.new(new_ticket_params)

      if @ticket.save
        render jsonapi: @ticket, status: :created
      else
        render jsonapi: @ticket.errors, status: :unprocessable_entity
      end
    end

    def update
      if @ticket.update(answer_ticket_params)
        render jsonapi: @ticket, status: :ok
      else
        render jsonapi: @ticket.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @ticket.destroy
      respond_to do |format|
        format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      def set_ticket
        @ticket = Ticket.find(params[:id])
      end

      def new_ticket_params
        ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:title, :description])
      end

      def answer_ticket_params
        ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:answer, :status])
      end
  end
end
