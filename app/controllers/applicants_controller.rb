class ApplicantsController < ApplicationController

  layout "public"


  before_action :confirm_logged_in
  def index
    @applicants = Applicant.all
  end

  def new
    @applicant = Applicant.new
  end

  def create 
    @applicant = Applicant.new(applicant_params)
    if @applicant.save 
      puts "========saved======"
      redirect_to (applicant_path(@applicant))
    else
      render('new')
    end

  end

  def show
    @applicant = Applicant.find(params[:id])

  end



  private

  def applicant_params
    params.require(:applicant).permit(:first_name, :last_name, :email, :DOB, :phone, :address, :white_card)
  end
end
