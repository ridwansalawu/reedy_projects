class WagesController < ApplicationController
  @@xyz = ["reedy", "john"]

  layout "formView"


  before_action :confirm_logged_in
  # before_action :@username => session[:username]





  def index
    @wages = Wage.all
  end

  def show
    @wage = Wage.find(params[:id])
  end

  def new
    @username =  session[:username]
    @wage = Wage.new()
    @worker = Wage.worker_name(@username)
    @xyz = ["john", "reedypee"]

  end

  def edit
    @wage = Wage.find(params[:id])
  end

  def create 
    @wage = Wage.new(wage_params)
    @xyz = ["john", "reedypee"]
   
    if @wage.save
      redirect_to @wage
    else
      render "new"
   end
   # render plain: params[:wage].inspect
  end

  def update
    @wage = Wage.find(params[:id])

    if @wage.update(wage_params)
      redirect_to @wage

    else 
      render 'edit'
    end
  end

  

  def destroy
    @wage = Wage.find(params[:id])
    if @wage.destroy
    puts "+++++++destroyed=========="
    else 
      puts "=================not destroyed=========================="
    end

    redirect_to wages_path
  end



  private

  def wage_params
    params.require(:wage).permit(:worker,
                                  :date,
                                  :asset_code,
                                  :asset_type,
                                  :pit_id,
                                  :acm,
                                  :trench_length,
                                  :shift,
                                  :size,
                                  :concrete,
                                  :bitumen,
                                  :brick,
                                  :rock,
                                  :comments,
                                  :status,
                                  :total
    )
  end



end
