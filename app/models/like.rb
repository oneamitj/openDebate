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

  def self._count(did)
  	Like.find_all_by_debate_id(did).count
  end
end
