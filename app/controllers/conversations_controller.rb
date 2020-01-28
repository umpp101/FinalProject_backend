class ConversationsController < ApplicationController

    def index
        conversations = Conversation.all
        # conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
        # list of conversations that the current user has!
        render json: {conversations: conversations} , :include => [:messages]
    end

end
