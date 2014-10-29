class AddPersonIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :person_id, :integer, default: 1
  end
end
