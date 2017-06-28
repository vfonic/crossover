module Api
  class TicketSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :status
  end
end
