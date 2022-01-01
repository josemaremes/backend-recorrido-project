class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service_name, null: false

      t.timestamps
    end
  end
end
