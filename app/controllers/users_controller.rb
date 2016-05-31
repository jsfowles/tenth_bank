class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to accounts_show_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
end
