class Like < ActiveRecord::Base
  attr_accessible :debate_id, :user_id

  def self.like?(uid, did)
  	l = Like.find_by_user_id_and_debate_id(uid, did)
  	if not l
  		false
  	else
  		l
  	end
  end
end
