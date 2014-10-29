class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :room_id
      t.integer :asset_id
      t.integer :qanak

      t.timestamps
    end
  end
end
