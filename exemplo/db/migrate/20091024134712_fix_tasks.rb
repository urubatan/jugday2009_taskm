class FixTasks < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.integer :status
      t.integer :priority
    end
    change_table :user_tasks do |t|
      t.integer :stage
    end
  end

  def self.down
    change_table :tasks do |t|
      t.drop_column :status
      t.drop_column :priority
    end
    change_table :user_tasks do |t|
      t.drop_column :stage
    end
  end
end
