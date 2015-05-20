class AddTagFeildToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :tag, :boolean
  end
end
