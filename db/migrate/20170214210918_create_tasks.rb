class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, foreign_key: true
      t.string :Todo
      t.boolean :In_Progress
      t.boolean :Completed

      t.timestamps
    end
  end
end
