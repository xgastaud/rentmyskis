class RenameFieldLocationToAddressToProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :location, :address
  end
end
