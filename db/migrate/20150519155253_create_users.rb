class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :email
      t.string :username
      t.string :password
      t.integer :gender

      t.timestamps
    end
  end
end
