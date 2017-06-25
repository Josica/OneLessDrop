class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.order('name ASC')
  end

  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully created a new user!"
      redirect_to user_path(@user)
    else
      @user.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile Updated "
      redirect_to user_path(@user)
    else
      @user.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    if find_user.destroy
      flash[:notice] = "Successfully deleted user!"
      redirect_to_user_path(@user)
    else
      @user.errors.full_messages
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :username, :password)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
