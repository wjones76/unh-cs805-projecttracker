class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.primary_key :id
      t.string :category, :limit => 30

      t.timestamps
    end
    add_index :categories, :category, :unique => true
  end
end
