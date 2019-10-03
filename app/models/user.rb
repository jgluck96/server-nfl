class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :pickems
  has_many :team_odds
  validates :username, uniqueness: true
  validates :username, presence: true

end
