class ConversationsController < ApplicationController

    def index
        conversations = Conversation.all
        # conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
        # list of conversations that the current user has!
        render json: {conversations: conversations} , :include => [:messages]
    end

    def show
        conversation = Conversation.find(params[:id])
        message = Message.new
        render json: {conversation: conversation}, :include => [:messages]
    end


    def create
        # byebug
        if Conversation.between(params[:sender_id], params[:receiver_id]).present?
            conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
        else
          conversation = Conversation.create!(conversation_params)
          render json: {conversations: conversations} , :include => [:messages]
        end
        render json: {error: "Something went wrong"}
    end


    def destroy
        conversation = Conversation.find(params[:id])
        if conversation.destroy
            render json: {message: "Successfully deleted conversation"}
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    private

    def conversation_params
        params.permit(:sender_id, :receiver_id)
    end
    
end
