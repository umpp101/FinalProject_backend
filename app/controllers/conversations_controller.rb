class ConversationsController < ApplicationController

    skip_before_action :authorized
    
    def index
        # conversations = Conversation.all
        # byebug
        user = User.find(params[:user_id])
        # conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
        # list of conversations that the current user has!
        render json: {conversations: user.conversations} , :include => [:messages]
    end

    def show
        user = User.find(params[:user_id])
        #conversation = user.conversations.find(params[:conversation_id]) <- NOT THIS!! 
        conversation = user.conversations.find {|convo| convo.id == params[:id].to_i } 
        # byebug
        if conversation
          render json: {conversation: conversation}, :include => [:messages]
        else
          render json: {error: 'Record not found.'}
        end
    end


    def create
        # byebug
        # conversation.sender_id = current_user.id
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
