class LoginController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  
  # This is kind of the main page for users.
  def menu
  end
  
  def login
  end
  
  # This is where you authenticate the username and password.
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = Owner.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      redirect_to controller: "login", action: "menu"
    else
      redirect_to controller: "login", action: "login"
    end
  end
  
  
  # This will log you out and bring you back to the login page.
  def logout
    session[:user_id] = nil
    session[:username] = nil
    redirect_to controller: "login", action: "login"
  end
  
end
