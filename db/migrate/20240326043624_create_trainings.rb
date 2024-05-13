class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.integer :training_menu_id
      t.integer :weight, null: false
      t.integer :body, null: false
      t.date :training_date
      t.bigint :list_id, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
