module Api
  class TicketSerializer < ActiveModel::Serializer
    attributes :id, :title
  end
end
