class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :pickems
  validates :username, uniqueness: true
  validates :username, presence: true

end
