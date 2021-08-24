class SessionsController < ActionController::Base
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "logged in successfully"
        else
            
            flash[:alert] = "Invalid email or pass"
            render  :new
        end
    end

    
    
    
    def destroy #dpesnot require view
        session[:user_id] = nil
        redirect_to root_path, notice: "logged out"
    end

end
