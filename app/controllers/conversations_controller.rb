class ConversationsController < ApplicationController
  
  def index
   @conversations = Conversation.all
  end  

  def new
    @conversation = Conversation.new
  end

  def create
    @conversation = current_user.started_conversations.build(conversation_params)

    if @conversation.save!
      UserHelper.parse_for_members(params[:conversation][:invitations]).each do |user_id|
        ConversationToUserRelationship.create!(user_id: user_id, conversation_id: @conversation.id)
      end
      redirect_to current_user
    end
  end

  private
    def conversation_params
      params.require(:conversation).permit(:theme, :author)
    end
end