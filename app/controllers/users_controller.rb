class UsersController < ApplicationController


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
      redirect_to(user_path(@user))
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
    redirect_to(users.path)
 end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :username)
  end

end
