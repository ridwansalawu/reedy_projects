class UsersController < ApplicationController

  layout "public"

    # before_action :confirm_logged_in

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      puts "+++++++++++++++++A new User created: #{@user.username}+++++++++++++++++++++++++++++++++++"
      redirect_to("/")
    else
      render('new') 
    end
  end

  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to(users_path(@user))
    else
      render('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_path)
 end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name, 
      :email,
      :phone, 
      :username,
      :password )
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "please log in."
      redirect_to(access_login_path)
      
    end
  end

end
