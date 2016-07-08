json.array!(@sales) do |sale|
  json.extract! sale, :id, :number_doc, :sale_note, :quantity, :um, :price, :sale_clause, :date_doc, :type_doc_id, :destination_id, :broker_id, :product_id, :client_id
  json.url sale_url(sale, format: :json)
end
