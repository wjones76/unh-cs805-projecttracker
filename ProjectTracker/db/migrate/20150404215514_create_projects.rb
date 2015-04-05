class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name, :limit => 120
      t.references :department
      t.text :description
      t.text :return_on_investment
      t.string :submitted_by, :limit => 20
      t.references :status
      t.datetime :created_on
      t.references :version
      t.references :category
      t.datetime :deliver_date

      t.timestamps
    end
    add_index :projects, :project_name, :unique => true
    add_index :projects, :department_id
    add_index :projects, :status_id
    add_index :projects, :version_id
    add_index :projects, :category_id
  end
end
