class Sale < ActiveRecord::Base
  belongs_to :type_doc
  belongs_to :destination
  belongs_to :broker
  belongs_to :product
  belongs_to :client
end
