class CreateUserProfileRoles < ActiveRecord::Migration
  def change
    create_table :user_profile_roles do |t|
      t.references :role
      t.references :userprofile
      t.datetime :created_on

      t.timestamps
    end
    add_index :user_profile_roles, :role_id
    add_index :user_profile_roles, :userprofile_id
  end
end
