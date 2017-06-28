module Api
  class UsersController < AuthenticatedController
    def show
      render jsonapi: current_user
    end
  end
end
