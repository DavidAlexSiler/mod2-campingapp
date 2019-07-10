class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    def create 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            flash[:info] = "You are logged in"
            redirect_to user_path(@user)
        else
            @error = "No such username or wrong email"
            render :new 
        end 
    end 

    def destroy
        session[:user_id] = nil
        redirect_to planets_path
    end 


end 