class Category < ActiveRecord::Base
  has_many :Products
  
  validates :name, presence: true, uniqueness: true
end
