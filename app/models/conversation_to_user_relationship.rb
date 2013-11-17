class ConversationToUserRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :conversation

  validates :user_id,           presense: true
  validates :conversation_id,   presense: true
end
