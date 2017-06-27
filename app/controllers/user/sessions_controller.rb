class User::SessionsController < Devise::SessionsController
  respond_to :json

  def create
    super do |user|
      data = {
        token: user.authentication_token,
        email: user.email
      }
      render json: data, status: 201
    end
  end
end
