class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user=User.create(user_params)
    if @user.save
      flash[:success] = "Welcome to the Ritley app!"
      sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end



private

def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
end

