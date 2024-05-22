class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    @user_path
  end
  
  def new
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Signed up successfully."
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Signed in successfully."
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end