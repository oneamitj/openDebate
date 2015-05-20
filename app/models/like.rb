class Like < ActiveRecord::Base
  attr_accessible :debate_id, :user_id
  has_many :users
  has_many :debates
end
