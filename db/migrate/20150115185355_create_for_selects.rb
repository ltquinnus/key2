class CreateForSelects < ActiveRecord::Migration
  def change
    create_table :for_selects do |t|
      t.string :code
      t.string :value
      t.string :text
      t.string :grouper
      t.integer :option_order
      t.string :facility

      t.timestamps
    end
  end
end
