class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :user_id, null: false
      t.integer :weight
      t.timestamps
    end
  end
end
