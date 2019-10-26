class EmployeesController < ApplicationController






  #reading
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end


  #creating
  def new
    @employee = Employee.new()
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
    @employee = Employee.find(params[:id])

  end

   def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      flash[:notice] = "Employee updated successfully."
      redirect_to(employee_path(@employee))
    else
      render('edit')
    end
  end


  #deleting
  def delete
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Employee destroyed successfully."
    redirect_to(employees_path)
  end

end


private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :DOB, :phone, :address)
  end

 