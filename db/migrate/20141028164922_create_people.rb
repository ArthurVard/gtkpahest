class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :section_id
      t.integer :position_id
      t.integer :room_id
      t.string :firstName
      t.string :lastName
      t.string :thirdName
      t.string :cellPhone1
      t.string :cellPhone2
      t.string :cityPhone
      t.string :email
      t.string :workemail
      t.date :bdate

      t.timestamps
    end
  end
end
