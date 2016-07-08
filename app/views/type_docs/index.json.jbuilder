json.array!(@type_docs) do |type_doc|
  json.extract! type_doc, :id, :cod_sii, :name, :positive
  json.url type_doc_url(type_doc, format: :json)
end
