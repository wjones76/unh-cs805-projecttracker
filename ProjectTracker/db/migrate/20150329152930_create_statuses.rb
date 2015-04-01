class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.primary_key :id
      t.string :status, :limit => 30

      t.timestamps
    end
    add_index :statuses, :status, :unique => true
  end
end
