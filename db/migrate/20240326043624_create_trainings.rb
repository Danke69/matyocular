class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.integer :training_menu_id
      t.integer :weight
      t.integer :body
      t.datetime :training_date
      t.bigint :list_id, null: false
      t.timestamps
    end
  end
end
