json.array!(@products) do |product|
  json.extract! product, :id, :cod, :cond_long, :name, :type_product_id, :line_product_id
  json.url product_url(product, format: :json)
end
