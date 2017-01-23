class UsersController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "Sucessfully registered to NewDeal!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "Uh oh! Something went wrong with your account"  
      redirect_to '/signup'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :country, :avatar)
  end

end
