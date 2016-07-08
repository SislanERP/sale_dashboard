json.array!(@clients) do |client|
  json.extract! client, :id, :name, :rut
  json.url client_url(client, format: :json)
end
