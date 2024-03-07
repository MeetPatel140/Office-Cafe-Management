class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total
      t.boolean :paid

      t.timestamps
    end
  end
end
