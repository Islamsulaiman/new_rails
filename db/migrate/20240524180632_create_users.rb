class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :email, unique: true
      t.string :phone_number

      t.timestamps
    end
  end
end
