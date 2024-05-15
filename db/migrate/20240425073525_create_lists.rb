class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :part, null: false
      t.timestamps
      t.integer :user_id
    end
  end
end
