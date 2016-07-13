class Product < ActiveRecord::Base
  belongs_to :line_product
  has_many :sales
end
