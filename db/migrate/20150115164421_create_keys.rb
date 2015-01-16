class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :Company
      t.text :Description
      t.integer :Number
      t.date :Checkout
      t.date :Checkin

      t.timestamps
    end
  end
end
