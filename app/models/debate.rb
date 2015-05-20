class Debate < ActiveRecord::Base
  attr_accessible :description, :likes, :topic, :user_id

  has_many :comments
  belongs_to :user

  validates :topic, presence: true
end
