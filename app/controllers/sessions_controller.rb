class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    administrator = Administrator.find_by(name: params[:name])
    if administrator.try(:authenticate, params[:password])
      session[:administrator_id] = administrator.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:administrator_id] = nil
    redirect_to store_index_url, notice: "Logged out"
  end
end
