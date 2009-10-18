class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.int :status
      t.int :priority
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
