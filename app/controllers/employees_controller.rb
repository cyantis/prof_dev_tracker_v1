class EmployeesController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)

    if @employee.save
      session[:user_id] =  @employee.id
      flash[:message] = "Employee Created!"
      redirect_to employee_path(@employee)
    else
      flash[:message] = "Required fields are missing. Please, enter again!"
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)

    if @employee.save
      flash[:message] = "Employee Updated!"
      redirect_to employee_path(@employee)
    else
      flash[:message] = "Required fields are missing. Please, enter again!"
      render :edit
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:username, :password, :email, :name, :title, :bio, :location_id, :manager_id, event_ids: [])
  end

end
