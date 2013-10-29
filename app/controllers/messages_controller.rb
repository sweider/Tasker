class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    respond_to do |format|
      format.js
    end
  end

  private
    def message_params
      params.require(:message).permit(:text, :user_id)
    end
end