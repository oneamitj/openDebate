class Comment < ActiveRecord::Base
  attr_accessible :debate_id, :description, :user_id
end