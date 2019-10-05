class EmployeesController < ApplicationController

  def show
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:id, :username, :password, :email, :name, :title, :bio, :location_id, event_ids: [])
  end
end
