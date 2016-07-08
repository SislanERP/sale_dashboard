json.array!(@line_products) do |line_product|
  json.extract! line_product, :id, :name, :type_product_id
  json.url line_product_url(line_product, format: :json)
end
