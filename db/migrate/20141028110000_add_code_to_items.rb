class AddCodeToItems < ActiveRecord::Migration
  def change
    add_column :items, :code, :string, default: '-'
  end
end
