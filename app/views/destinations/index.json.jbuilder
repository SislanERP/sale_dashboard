json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :cod, :cod_iso, :continent, :region
  json.url destination_url(destination, format: :json)
end
