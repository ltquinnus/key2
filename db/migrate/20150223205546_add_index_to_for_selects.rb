class AddIndexToForSelects < ActiveRecord::Migration
  def change
    add_index :for_selects, :Code
  end
end
