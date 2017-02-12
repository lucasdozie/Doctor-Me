class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :user_id, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
