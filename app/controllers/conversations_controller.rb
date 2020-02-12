class ConversationsController < ApplicationController

    skip_before_action :authorized
    
    def index
        # byebug
        user = User.find(params[:user_id])
        render json: {conversations: user.conversations} , :include => [:messages]
        # conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
        # list of conversations that the current user has!
        # conversations = Conversation.all
        # render json: {conversations: conversations} , :include => [:messages]
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
        if Conversation.between(conversation_params[:sender_id], conversation_params[:receiver_id]).present?
          conversation = Conversation.find_by(sender_id: conversation_params[:sender_id], receiver_id: conversation_params[:receiver_id]) ? 
            Conversation.find_by(sender_id: conversation_params[:sender_id], receiver_id: conversation_params[:receiver_id]) :
            Conversation.find_by(sender_id: conversation_params[:receiver_id], receiver_id: conversation_params[:sender_id]) 

          render json: {conversation: conversation} , :include => [:messages]
        else
          conversation = Conversation.create!(conversation_params)
          if !conversation.valid?
            render json: {error: "Something went wrong"}
          else
            render json: {conversation: conversation} , :include => [:messages]
          end
        end
        
    end

    
    private

    def conversation_params
        params.require(:conversation).permit(:sender_id, :receiver_id)
    end
    
end
