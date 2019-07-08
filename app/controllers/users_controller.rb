class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end 

    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end 
    end 

    def edit 
        @user = User.find(params[:id])
        render :edit 
    end 

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to planets_path
    end 
    

    private 

    def user_params
        params.require(:user).permit(:name, :bio, :age, :img_url, :username, :password)
    end 
end
