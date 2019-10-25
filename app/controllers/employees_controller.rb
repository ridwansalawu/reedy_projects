class EmployeesController < ApplicationController

  #reading
  def index
    @employees = Employee.all
  end

  def show
  end


  #creating
  def new
    @employee = Employee.new(:first_name => "test", :last_name => "test")
    puts "Employee created: #{@employee}"
  end

  def create
      puts "About to save employee #{params[:employee]}"
      # @employee = Employee.new(:first_name => params[:employee][:first_name], :last_name => params[:employee][:last_name])
      @employee = Employee.new(employee_params)
      if @employee.save
        puts "++++++++++saved++++++++++++"
        flash[:notice] = "A new employee has just been manufactured successfully."
        redirect_to("/")
      else
        render('new')
      end
  end

  #editing
  def edit
  end

  def update
  end


  #deleting
  def delete
  end

  def destroy
  end
end


private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :DOB, :phone, :address)
  end