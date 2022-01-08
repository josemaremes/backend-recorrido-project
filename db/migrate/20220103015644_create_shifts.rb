# frozen_string_literal: true

class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :contract_name, null: false
      t.string :service_name, null: false
      t.string :date_title, null: false
      t.string :interval, null: false
      t.string :user_name, null: false
      t.boolean :user_value, null: false
      t.string :week, null: false

      t.timestamps
    end
  end
end
