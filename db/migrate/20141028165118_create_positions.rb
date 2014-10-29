class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.float :salary

      t.timestamps
    end
  end
end
