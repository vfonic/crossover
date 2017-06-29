module Api
  class UsersController < AuthenticatedController
    before_action :check_if_admin_user, except: [:me]

    def check_if_admin_user
      raise 'Access denied' unless current_user.admin?
    end

    def index
      @users = User.all
      render jsonapi: @users
    end

    def show
      @user = User.find(params[:id])
      render jsonapi: @user
    end

    def me
      render jsonapi: current_user
    end
  end
end
