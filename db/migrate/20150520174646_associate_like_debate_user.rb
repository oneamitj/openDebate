class AssociateLikeDebateUser < ActiveRecord::Migration
  def change
  	add_column :users, :like_id, :integer
  	add_column :debates, :like_id, :integer
  end
end
