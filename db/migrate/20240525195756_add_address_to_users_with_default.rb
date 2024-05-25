class AddAddressToUsersWithDefault < ActiveRecord::Migration[7.1]
  def up
    User.update_all(address: "default address")
  end

  def down
    # No need to revert data changes
  end
end
