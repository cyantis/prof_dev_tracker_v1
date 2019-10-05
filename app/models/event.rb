class Event < ApplicationRecord
  has_many :employees_events
  has_many :employees, through: :employees_events
  
end
