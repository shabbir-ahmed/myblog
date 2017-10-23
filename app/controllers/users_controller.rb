class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit, :update]
  	before_action :authorize_user, only: [:edit, :update]
 	before_action :set_user, only: [:show, :edit, :update]

  	def show
	    @user = User.find(params[:id])
  	end

  	def edit
  	end

  	def update
	    if @user.update(user_params)
	      redirect_to @user
	    else
	      render :edit, alert: "Could not update, Please try again"
	    end
  	end

  	private

    def set_user
      	@user = User.find(params[:id])
    end

    def user_params
      	params.require(:user).permit(:username)
    end

    def authorize_user
      	unless current_user.id == params[:id].to_i
        	redirect_to root_url
      	end
    end
end