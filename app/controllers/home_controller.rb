class HomeController < ApplicationController

  def login
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
  def logout

  end

  def admin
  end

  private

  def find_user
    @user = User.find_by(Current.id)
  end

end
