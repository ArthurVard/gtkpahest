class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :amount
      t.text :note

      t.timestamps
    end
  end
end
