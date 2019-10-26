class AccessController < ApplicationController

  before_action :confirm_logged_in

  def menu
  end

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      puts "++++++++++++++++++present++++++++++++++++++++"
      found_user = User.where(:username => params[:username]).first
      if found_user 
        puts "==================FOUND================="
        authorized_user = found_user.authenticate(params[:password])

      end
    end

    if authorized_user 
      session[:user_id] = authorized_user.id
      puts "------------HERE is the ID : #{authorized_user_id}--------------------"
      flash[:notice] = "you are now logged in."
      redirect_to(admin_path)
    else
      puts "========NO no NO============="
      flash.now[:notice] = "Invalid username/password combination."
      render("login")
    end


  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged Out"
    redirect_to(access_login_path)

    
  end
end
