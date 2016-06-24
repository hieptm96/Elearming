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
      log_in @user #gan session de chuyen sang trang thai da login.neu khong co dong nay thi sau khi signup xong chi 
                    # chuyen sang trang show, chu login ko chuyen thanh account
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
