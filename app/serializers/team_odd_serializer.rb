class TeamOddSerializer < ActiveModel::Serializer
  attributes :id, :name, :odds, :user_id, :week, :winnings
  belongs_to :user
end
