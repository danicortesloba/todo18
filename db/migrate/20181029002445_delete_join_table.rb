class DeleteJoinTable < ActiveRecord::Migration[5.2]
  def change
  drop_join_table :tasks, :users
end
end
