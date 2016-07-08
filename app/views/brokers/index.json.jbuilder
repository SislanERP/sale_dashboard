json.array!(@brokers) do |broker|
  json.extract! broker, :id, :name, :code
  json.url broker_url(broker, format: :json)
end
