class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :blogs, :user_id
  end
end
