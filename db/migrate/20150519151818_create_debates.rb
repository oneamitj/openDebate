class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.text :topic
      t.text :description
      t.string :user_id
      t.integer :likes

      t.timestamps
    end
  end
end
