class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items

  def total
    order_items.sum('quantity * price')
  end
end