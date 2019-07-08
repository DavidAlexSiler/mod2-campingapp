class UsersController < ApplicationController

    def current_user
        user_id = session[:user_id]
        user_id && User.find(user_id)
    end

    def authenticate!
        unless current_user
            flash[:info] = "**star wars error**"
            redirect_to planet_index_path
        end
    end

end
