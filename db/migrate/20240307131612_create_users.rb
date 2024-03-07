class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :emai
      t.string :password_digest
      t.string :mobile_number
      t.string :role

      t.timestamps
    end
  end
end
