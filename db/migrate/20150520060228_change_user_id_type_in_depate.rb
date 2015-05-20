class ChangeUserIdTypeInDepate < ActiveRecord::Migration
  def change
  	change_column :debates, :user_id, :integer
  end
end
