class User < ApplicationRecord
  has_many :players
  validates :email, presence: true, uniqueness: true 
  has_secure_password
end
