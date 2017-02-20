class RemoveFieldFromTask < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :In_Progress, :boolean
    remove_column :tasks, :Completed, :boolean
  end
end
