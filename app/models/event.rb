class Event < ApplicationRecord
  has_many :employee_events
  has_many :employees, through: :employee_events

  scope :event_order, -> { select(:category).order(:category).distinct }

end
