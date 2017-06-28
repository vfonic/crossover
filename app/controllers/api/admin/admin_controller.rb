module Api
  module Admin
    class AdminController < AuthenticatedController
      before_action :check_if_admin_user

      def check_if_admin_user
        raise 'Access denied' unless current_user.admin?
      end
    end
  end
end
