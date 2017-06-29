class Admin::ReportsController < ApplicationController
  def show
    send_data(generate_pdf, filename: "report.pdf", type: "application/pdf")
  end

  private

  def generate_pdf
    tickets_count = Ticket.where('updated_at > ?', Time.zone.now.beginning_of_month).count

    Prawn::Document.new do
      text "Tickets closed last month: #{tickets_count}"
    end.render
  end
end
