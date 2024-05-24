class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :phone_number
      t.index ["email"], name: "index_on_email", unique: true
      t.timestamps
    end
  end
end
