# frozen_string_literal: true

class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :day_name, null: false

      t.timestamps
    end
  end
end
