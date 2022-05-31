class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  layout 'login'

  def index
    render layout: 'application'
  end

  def new
  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      logger.info "user logged in"
      redirect_to root_path, notice: "Logged in successfully."
    else
      logger.info "Bad login"
      redirect_to login_path, alert: "Incorrect username or password, please try again."
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out."
  end
  
end
