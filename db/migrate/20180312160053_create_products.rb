class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.references :user, foreign_key: true
      t.float :price_per_day

      t.timestamps
    end
  end
end
