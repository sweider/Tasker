class Conversation < ActiveRecord::Base
  attr_accessor :invitations
  belongs_to :author, class_name: "User"

  has_many :messages
  has_many :conversation_to_user_relationships
  has_many :members, through: :conversation_to_user_relationships, source: :user

  validates :theme,     presence: true
  validates :user_id,   presence: true
end
