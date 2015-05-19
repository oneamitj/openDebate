class Debate < ActiveRecord::Base
  attr_accessible :description, :likes, :topic, :user_id
end
