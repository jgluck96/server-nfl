class MessagesController < ApplicationController
  def index
    messages = Message.all

    render json: messages, include: ['user']
  end

  def create
    message = Message.new(message_params)
    conversation = Conversation.find(8)
    if message.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MessageSerializer.new(message)
      ).serializable_hash
      MessagesChannel.broadcast_to conversation, serialized_data
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :conversation_id, :username, :user_id)
  end
end
