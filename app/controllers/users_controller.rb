class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end
  
  def show
    @user = current_user
    @books = @user.books
  end

  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:profile_image)
  end
    
end
