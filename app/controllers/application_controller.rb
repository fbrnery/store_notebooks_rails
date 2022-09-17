class ApplicationController < ActionController::Base
    before_action :authorize

    protected_methods

      def authorize
        unless User.find_by(id: session[:user_id])
          redirect_to login_users_url, notice: "Please log in"
    end
    
    def authorize
      unless Administrator.find_by(id: session[:administrator_id])
        redirect_to login_url, notice: "Please log in"
        end
  end
end
end