class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.string :workflow_name, :limit => 50
      t.references :department
      t.text :description
      t.string :created_by
      t.references :status
      t.datetime :created_on

      t.timestamps
    end
    add_index :workflows, :workflow_name, :unique => true
    add_index :workflows, :department_id
    add_index :workflows, :status_id
  end
end
