class CreateTrainingMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :training_menus do |t|
      t.string :item
      t.timestamps
      t.integer :list_id, null: false
      t.integer :user_id
    end
  end
end
