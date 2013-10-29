class Message < ActiveRecord::Base

  default_scope order: 'messages.created_at DESC'

  belongs_to :user
end
