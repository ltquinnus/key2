class AddIndexToKeys < ActiveRecord::Migration
  def change
    add_index :keys, :Company
  end
end
