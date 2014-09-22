class UsersController < ApplicationController
  	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, :notice => "Signed up successfully"
		else
			render 'new'
		end
	end

	def index
		@user = User.find(user_params)
	end

 	def edit
 	end

 	def delete
 	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
