class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.references :service, null: false, foreign_key: true
      t.references :opening_schedule, null: false
      t.references :closing_schedule, null: false
      t.string :contract_name, null: false
      t.references :opening_day, null: false
      t.references :closing_day, null: false

      t.timestamps
    end

    add_foreign_key :contracts, :schedules, column: :opening_schedule_id
    add_foreign_key :contracts, :schedules, column: :closing_schedule_id
    add_foreign_key :contracts, :days, column: :opening_day_id
    add_foreign_key :contracts, :days, column: :closing_day_id
  end
end
