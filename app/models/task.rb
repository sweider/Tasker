class Task < ActiveRecord::Base
  belongs_to :user
  
  scope :nearest_deadlines, lambda { |user| where("user_id = :user_id", user_id: user.id).order("deadline DESC").limit(3) }
  scope :current_deadlines, lambda { |user| where("(CURRENT_DATE >= tasks.notify_date) AND (user_id = :user_id)", user_id: user.id)}

  validates :user_id, presence: true
  validates :description, presence: true

end
