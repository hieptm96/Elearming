class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to the E-Learning System"
  		redirect_to @user
  	else
  	  render 'new'
  	end
  end

  private
  	def user_params
  		params.require(:user).permit(:name, :password, :email, :birthday, :address, :phone_number)
  	end

end
