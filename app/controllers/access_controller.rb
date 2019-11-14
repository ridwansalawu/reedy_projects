class AccessController < ApplicationController

  layout "public"

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def menu
    @username =  session[:username] 
  end

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      puts "++++++++++++++++++present++++++++++++++++++++"
      found_user = User.where(:username => params[:username]).first
      if found_user 
        puts "==================FOUND================="
        puts "------------HERE is the USERNAME : #{found_user.username}--------------------"
        puts "------------HERE is the PASS : #{found_user.password}--------------------"
        puts "------------HERE is the PASS DIG : #{found_user.password.class}--------------------"




        authorized_user = found_user.authenticate(params[:password])

        puts "------------HERE is the ID : #{found_user.id}--------------------"

        puts "------------HERE is the ID class : #{authorized_user.class}--------------------"
        
        puts "------------HERE is the ID : #{authorized_user == true}--------------------"

      end
    end

    if authorized_user 
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      # @@loggedinuser = authorized_user.username
      puts "------------HERE is the ID : #{authorized_user.id}--------------------"
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
    session[:username] = nil
    flash[:notice] = "Logged Out"
    
    redirect_to(access_login_path)

    
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "please log in."
      redirect_to(access_login_path)
      
    end
  end


end
