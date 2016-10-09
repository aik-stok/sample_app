class UsersController < ApplicationController
  def new
  @user = User.new
  end
  def show
  @user = User.find_by(params[:id])
  end
 
  def create
    @user = User.new(user_params)    
    if @user.save
    flash[:success] = "Welcome to the Sample App!"
          redirect_to @user
      # Handle a successful save.
    else
      render 'new'
      end
    end
    private
  
    def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
  end