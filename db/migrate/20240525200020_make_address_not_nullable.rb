class MakeAddressNotNullable < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :address, false

  end
end
