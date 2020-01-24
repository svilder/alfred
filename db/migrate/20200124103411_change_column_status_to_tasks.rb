class ChangeColumnStatusToTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :status, :boolean, :default => false
  end
end
