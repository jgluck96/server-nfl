class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :content, :username, :user_id, :created_at


end
