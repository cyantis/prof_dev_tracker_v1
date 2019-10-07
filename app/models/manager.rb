class Manager < ApplicationRecord
  belongs_to :location
  has_many :employees

  validates :username, :email, :name, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password

end
