class User < ActiveRecord::Base

  has_many :messages
  has_many :tasks
  has_many :started_conversations, class_name:"Conversation"
  has_many :conversation_to_user_relationships
  has_many :active_conversations, through: :conversation_to_user_relationships, source: :conversation

  validates :nick_name, presence: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def current_deadlines
    Task.current_deadlines(self)
  end

  def nearest_deadlines
    Task.nearest_deadlines(self)
  end
  
end
