class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    respond_to do |format|
      format.js
      format.html { redirect_to current_user}
    end
  end

  def new
  end

  private
    def message_params
      params.require(:message).permit(:text, :user_id)
    end
end