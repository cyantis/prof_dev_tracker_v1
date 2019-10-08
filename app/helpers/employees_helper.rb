module EmployeesHelper

  def manager_arr
    Employee.all.collect{ |m| m if m.manager_id == nil }.compact
  end

end
