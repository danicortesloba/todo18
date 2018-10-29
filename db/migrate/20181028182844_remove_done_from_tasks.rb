class RemoveDoneFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :done, :boolean
  end
end
