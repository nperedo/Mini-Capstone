class Team < ApplicationRecord
  belongs_to :user
  has_many :players
  validates :name, presence: true
  validates :rank, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
end 
