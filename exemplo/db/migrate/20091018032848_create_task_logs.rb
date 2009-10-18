class CreateTaskLogs < ActiveRecord::Migration
  def self.up
    create_table :task_logs do |t|
      t.references :task
      t.references :user
      t.date :log_date
      t.text :comment
      t.int :old_status
      t.int :new_status

      t.timestamps
    end
  end

  def self.down
    drop_table :task_logs
  end
end
