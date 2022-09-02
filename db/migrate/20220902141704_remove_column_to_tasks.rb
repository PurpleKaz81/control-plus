class RemoveColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :order
  end
end
