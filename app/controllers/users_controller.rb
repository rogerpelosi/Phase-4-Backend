class UsersController < ApplicationController

    skip_before_action :authorize, only: :create 

    def create 
        @new_user = User.create!(user_params)
        session[:user_id] = @new_user.id
        render json: @new_user,
        status: :created
    end 

    def show 
        render json: @current_user 
    end 

    private 

    def user_params 
        params.permit(:username, :password, :password_confirmation, :name, :bio, :email)
    end 

end
