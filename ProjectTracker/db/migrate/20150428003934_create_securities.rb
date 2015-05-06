class CreateSecurities < ActiveRecord::Migration
  def change
    create_table :securities do |t|
      t.string :name
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
