json.array!(@investors) do |investor|
  json.extract! investor, :id
  json.url investor_url(investor, format: :json)
end
