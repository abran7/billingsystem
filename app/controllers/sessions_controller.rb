class SessionsController < ApplicationController
    
    def signin
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "logged in successfully"
        else
            
            flash.alert = "User not found."
            render  :new
        end
    end

    
    
    
    def destroy #dpesnot require view
        session[:user_id] = nil
        redirect_to root_path, notice: "logged out Successfully"
    end

end
