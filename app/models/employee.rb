class Employee < ApplicationRecord
  belongs_to :location
  has_many :employees_events
  has_many :events, through: :employees_events
end
