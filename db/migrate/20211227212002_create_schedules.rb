class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :opening_time, null: false
      t.string :closing_time, null: false

      t.timestamps
    end
  end
end
