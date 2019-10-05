class EmployeesController < ApplicationController

  def employee_params
    params.require(:employee).permit(:username, :password, :email, :name, :title, :bio, :location_id, event_ids: [])
  end
end
