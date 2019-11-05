class WagesController < ApplicationController

  layout "formView"


  before_action :confirm_logged_in





  def index
  end

  def show
  end

  def new
    @username =  session[:username]
    @wages = Wage.new()
  end

  def create 
    @wage = Wage.new(wage_params)
    @wage.save
    if @wage.save
      puts "++++++++++++++++++++++++++++++saved________________------------====="
    end
    redirect_to @wage
    
    puts "++++++++++ about to create #{params[:wage]}++++++++++"
    # render plain: params[:wage].inspect

  end

  def edit
  end

  def delete
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
