class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.primary_key :id
      t.string :first_name, :limit => 30
      t.string :last_name, :limit => 30
      t.string :nt_login, :limit => 20
      t.references :department
      t.text :phone_number, :limit => 20
      t.string :email, :limit => 80
      t.string :job_title, :limit => 30
      t.datetime :created_on

      t.timestamps
    end
    add_index :userprofiles, :nt_login, :unique => true
    add_index :userprofiles, :department_id
  end
end
