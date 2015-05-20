class Comment < ActiveRecord::Base
  attr_accessible :debate_id, :description, :user_id

  belongs_to :debate
  belongs_to :user
end
