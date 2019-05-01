class UsersController < ApplicationController
    def show 
        @user = User.find(params[:id])
        render json: @user
    end 

    def create
        @user = User.create(params[:id]
         render json: @user
    end 
    
    def update
        @user = User.find(params[:id]
         render json: @user
    end 

    def delete
        @user = User.find(params[:id]
        @user.destroy
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end 
end

