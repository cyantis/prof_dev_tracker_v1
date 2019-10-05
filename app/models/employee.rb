class Employee < ApplicationRecord
  belongs_to :location
  has_many :employees_events
  has_many :events, through: :employees_events

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password
end
