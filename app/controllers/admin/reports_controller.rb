class Admin::ReportsController < ::Api::Admin::AdminController
  def show
    Prawn::Document.generate('report.pdf') do
      text "Hello World!"
    end
  end
end
