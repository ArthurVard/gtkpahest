class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
