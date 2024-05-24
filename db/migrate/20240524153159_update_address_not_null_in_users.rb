class UpdateAddressNotNullInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :address, :string, null: false
  end
end
