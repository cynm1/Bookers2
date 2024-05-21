class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end
  
  def show
    @user = current_user
    @books = Book.all
  end

  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:profile_image)
  end
    
end
