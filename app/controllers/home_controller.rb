class HomeController < ApplicationController
  

  def login
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logout; end

  def admin; end
  



  def plan
    @plans = Plan.includes(:features).all
    
  end
  



  def home
  end
  
  
end
