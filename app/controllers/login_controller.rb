class LoginController < ApplicationController
  
  def index
  end
  
  def menu
  end
  
  def login
  end
  
  # This is where you authenticate the username and password.
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = Owner.where(:username => params[:username]).first
      binding.pry
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      redirect_to controller: "login", action: "menu"
    else
      redirect_to controller: "login", action: "login"
    end
  end
  
  def logout
    redirect_to controller: "login", action: "login"
  end
  
end
