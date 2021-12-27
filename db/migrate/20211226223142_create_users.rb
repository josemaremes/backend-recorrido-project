class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :lastname, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
