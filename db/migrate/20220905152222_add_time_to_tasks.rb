class AddTimeToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :time, :string
  end
end
