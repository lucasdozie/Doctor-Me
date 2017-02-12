class AddMetaToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :telephone, :string
    add_column :users, :username, :string
    add_column :users, :role, :string
  end
end
