class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :time_name, null: false

      t.timestamps
    end
  end
end
