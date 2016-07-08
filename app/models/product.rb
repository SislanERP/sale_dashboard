class Product < ActiveRecord::Base
  belongs_to :type_product
  belongs_to :line_product
end
