module Api
  class TicketSerializer < ActiveModel::Serializer
    attributes :id, :title, :description
  end
end
