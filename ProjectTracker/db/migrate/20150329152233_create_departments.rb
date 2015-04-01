class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.primary_key :id
      t.string :department, :limit => 30

      t.timestamps
    end
    add_index :departments, :department, :unique => true
  end
end
