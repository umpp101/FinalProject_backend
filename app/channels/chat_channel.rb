class ChatChannel < ApplicationCable::Channel
  # need to create a stream
  # In this stream, clients and server will send and receive data.
  
  def subscribed
    # byebug
    # we only stream from the channel that the user belongs to
    stream_from 'chat_channel'
  end

  # This will receive data, manipulate that data to create a new instance of a Message, 
  # and then broadcast that new message into the stream
  def speak(data)
    # byebug
    message = Message.create!(data["message"])
    # message = Message.create(message_params)
    socket = { true_message: message }
    
    # ^ this is a hash, becuz ction Cable only allows you to broadcast objects. Broadcasting a string will throw an error.
    ActionCable.server.broadcast('chat_channel', socket)
  end

  def create(opts)
    Message.create(
      body: opts.fetch('body')
    )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  
#   def message_params
#     data.require(:message).permit(:body, :conversation_id, :user_id)
# end


end
