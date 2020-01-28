class MessagesController < ApplicationController

#     before_action do
#     conversation = Conversation.find(params[:conversation_id])
#     render json: ConversationSerializer.new(conversation, {include: [:messages]}) 
#     end

    def index
    # messages = conversation.messages
    # if messages.last
    #   if messages.last.user_id != current_user.id
    #     messages.last.read = true;
    #   end
    # end
    # message = conversation.messages.new
        messages = Message.all
    # render json: {messages: messages} , :include => [:user]
        render json: {messages: messages}   
    end

end
