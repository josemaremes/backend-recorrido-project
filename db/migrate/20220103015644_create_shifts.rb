class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :contract_name, null: false
      t.string :service_name, null: false
      t.string :date_title, null: false
      t.string :interval, null: false
      t.string :not_name, null: false
      t.boolean :not_value, null: false
      t.string :first_user_name, null: false
      t.boolean :first_user_value, null: false
      t.string :second_user_name, null: false
      t.boolean :second_user_value, null: false
      t.string :third_user_name, null: false
      t.boolean :third_user_value, null: false
      t.string :week, null: false

      t.timestamps
    end
  end
end
