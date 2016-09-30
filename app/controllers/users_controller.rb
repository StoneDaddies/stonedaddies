class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new

    if @user.save
      flash[:success] = "Welcome to the Stone Daddies!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end

end