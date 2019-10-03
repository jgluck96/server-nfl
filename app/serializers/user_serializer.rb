class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :pickems
  has_many :messages
  has_many :team_odds
end
