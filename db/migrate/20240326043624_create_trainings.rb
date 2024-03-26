class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :menu
      t.integer :weight
      t.integer :number
      t.timestamps
    end
  end
end
