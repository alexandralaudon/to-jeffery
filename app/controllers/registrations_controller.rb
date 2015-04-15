class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have now registered to write a message for Jeffery.  Please proceed below"
      redirect_to root_path
    else
      flash[:notice] = "Asshole.  Please don\'t mess up the system.  I\'m trying to do something"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :message, :avatar)
  end

end
