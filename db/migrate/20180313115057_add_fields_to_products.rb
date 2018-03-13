class AddFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :location, :string
    add_column :products, :description, :text
  end
end
