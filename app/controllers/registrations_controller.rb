class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      flash[:notice] = "PLEASE DON'T MESS UP THE SYSTEM."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :message, :avatar)
  end

end
