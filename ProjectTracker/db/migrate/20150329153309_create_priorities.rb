class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.primary_key :id
      t.string :priority, :limit => 30

      t.timestamps
    end
    add_index :priorities, :priority, :unique => true
  end
end
