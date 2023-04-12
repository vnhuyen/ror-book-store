class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: "Successfully logged in!"
    else
      redirect_to "/login", notice: "email or password is invalid."
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out!"
  end

  def page_requires_login
  end
end
