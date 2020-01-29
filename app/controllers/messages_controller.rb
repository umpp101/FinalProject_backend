class MessagesController < ApplicationController

#     before_action do
#     conversation = Conversation.find(params[:conversation_id])
#     render json: ConversationSerializer.new(conversation, {include: [:messages]}) 
#     end


    # def index
    # # messages = conversation.messages
    # # if messages.last
    # #   if messages.last.user_id != current_user.id
    # #     messages.last.read = true;
    # #   end
    # # end
    # # message = conversation.messages.new
    #     # messages = Message.all
    #     conversation = Conversation.find(params[:conversation_id])
    # # render json: {messages: messages} , :include => [:user]
    #     render json: {messages: conversation.messages}   
    # end

    def create
        message = message.new(message_params)
        # message.user_id = current_user.id
        # message.conversation_id = params[:conversation_id]
        if message.save
            render json: {messages: messages}
        else
            render json: {error: "Something went wrong"}
        end
    end

    
    def show
        byebug
        message = Message.find(params[:id])
        render json: {message: message}
    end


    def destroy
        message = Message.find(params[:id])
        if message.destroy
            render json: {message: "Successfully deleted message"}
        else
            render json: {error: "Something went wrong"}
        end
    end
  


    private
  
    def message_params
        params.require(:message).permit(:body, :conversation_id, :user_id)
    end
end
