class UsersController < ApplicationController
  def create
    
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end
  private
  
  def user_params
    # params.require(:user).permit(:name, :email)
  end
end
