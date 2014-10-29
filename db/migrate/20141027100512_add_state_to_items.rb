class AddStateToItems < ActiveRecord::Migration
  def change
    add_column :items, :state_id, :integer, default: 1
  end
end
