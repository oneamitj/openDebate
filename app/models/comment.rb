class Comment < ActiveRecord::Base
  attr_accessible :debate_id, :description, :user_id, :tag

  belongs_to :debate
  belongs_to :user

  validates :description, presence: true
 
end
