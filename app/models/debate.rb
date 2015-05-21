class Debate < ActiveRecord::Base
  attr_accessible :description, :likes, :topic, :user_id

  has_many :comments
  has_many :likes
  belongs_to :user
  
  validates :topic, presence: true

  def self.trending_debates 
    debate_ids = Like.group(:debate_id).select('debate_id, COUNT(*) as debate_group').order('debate_group desc').limit(5).pluck(:debate_id)
    find_debates(debate_ids)
  end

  def self.hot_debates
    debate_ids = Comment.group(:debate_id).select('debate_id, COUNT(*) as debate_group').order('debate_group desc').limit(5).pluck(:debate_id)
    find_debates(debate_ids)
  end

  def self.count_comments (debate_id)
    Comment.find_all_by_debate_id(debate_id).count
  end

  def self.find_debates(debate_ids)
    debate_ids.map { |id| Debate.find(id)}
  end

end
