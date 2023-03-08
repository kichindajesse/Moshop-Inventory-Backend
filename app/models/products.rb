class Product < ActiveRecord::Base
  belongs_to :category
end

class Category < ActiveRecord::Base
  has_many :products
end
