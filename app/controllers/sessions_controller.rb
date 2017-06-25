class SessionsController < ApplicationController

  def login
  end

  def create
    @user = User.find_by(username: params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successfully logged in"
      redirect_to homepages_path
    else
      flash[:alert] = "Invalid login. Please try again"
      redirect_to login_path
    end
  end

  def destroy
    sessions.clear
    redirect_to homepages_path
  end

end
