class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer  :user_id, foreign_key: true
      t.string   :education
      t.string   :role
      t.string   :location
      t.string   :projects
      t.string   :occupation

      t.timestamps
    end
  end
end
