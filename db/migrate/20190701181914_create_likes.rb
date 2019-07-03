class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
      t.index :user_id
      t.index :plan_id
      t.index [:user_id, :plan_id], unique: true
    end
  end
end
