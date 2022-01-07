# frozen_string_literal: true

class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.references :service, null: false, foreign_key: true
      t.string :contract_name, null: false
      t.string :open_close_day, null: false
      t.string :open_close_schedule, null: false

      t.timestamps
    end
  end
end
