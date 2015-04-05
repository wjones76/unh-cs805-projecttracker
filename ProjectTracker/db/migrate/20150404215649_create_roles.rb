class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role_name, :limit => 50
      t.text :description
      t.string :created_by
      t.datetime :created_on

      t.timestamps
    end
    add_index :roles, :role_name, :unique => true
  end
end
