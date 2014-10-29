class RemoveDefaultFromItems < ActiveRecord::Migration
  def change
  	 change_column_default :items, :code, nil
  end
end
