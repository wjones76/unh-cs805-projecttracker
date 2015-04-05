class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name, :limit => 120
      t.text :description
      t.references :priority
      t.string :assigned_to, :limit => 20
      t.references :category
      t.date :start_date
      t.date :end_date
      t.string :version, :limit => 20
      t.references :status

      t.timestamps
    end
    add_index :tasks, :priority_id
    add_index :tasks, :category_id
    add_index :tasks, :status_id
  end
end
