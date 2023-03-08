class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :price
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
