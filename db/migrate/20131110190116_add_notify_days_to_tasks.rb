class AddNotifyDaysToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :notify_date, :date
  end
end
