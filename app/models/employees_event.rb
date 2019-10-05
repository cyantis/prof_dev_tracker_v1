class EmployeesEvent < ApplicationRecord
  belongs_to :employees
  belongs_to :events
  
end
