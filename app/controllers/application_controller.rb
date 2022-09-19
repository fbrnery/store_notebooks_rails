class ApplicationController < ActionController::Base
    before_action :authorize

    # ...

  protected

    def authorize
      unless Administrator.find_by(id: session[:administrator_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
end
