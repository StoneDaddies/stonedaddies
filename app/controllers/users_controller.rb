class UsersController < ApplicationController

  def show
    
  end

  def new

  end

  def create


    if @user.save

    else

    end
  end

  def index

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
