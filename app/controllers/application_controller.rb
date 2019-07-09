class ApplicationController < ActionController::Base

    def current_user
        user_id = session[:user_id]
        user_id && User.find(user_id)
    end

    def authenticate!
        unless current_user
            flash[:info] = "**Need to be logged for this function**"
            redirect_to planets_path
        end
    end

end
