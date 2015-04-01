class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.primary_key :id
      t.string :version_name, :limit => 30
      t.integer :project_id

      t.timestamps
    end
  end
end
