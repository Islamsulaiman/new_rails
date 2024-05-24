class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
