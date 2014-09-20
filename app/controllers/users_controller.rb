class UsersController < ApplicationController

  layout 'market'

  def new
    @user = User.new
  end

  def create
  @user = User.new(params.require(:user).permit(:name, :email, :password))
  if @user.save
    # log the user in
    redirect_to home_path
  else
    render 'new'
  end
  end

end
