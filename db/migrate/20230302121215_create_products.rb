class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :quantity
      t.integer :category_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
