class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :description
      t.string :customer_email
      t.string :customer_name
      t.integer :total_amount
      t.datetime :created_at
      t.datetime :updated_at
      end
  end
end
