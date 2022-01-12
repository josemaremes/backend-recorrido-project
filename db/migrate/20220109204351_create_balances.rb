class CreateBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :balances do |t|
      t.string :contract_name, null: false
      t.string :service_name, null: false
      t.string :user_name, null: false
      t.integer :count, null: false
      t.integer :shift, null: false, default: 3
      t.string :week, null: false

      t.timestamps
    end
  end
end
