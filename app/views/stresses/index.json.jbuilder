json.array!(@stresses) do |stress|
  json.extract! stress, :id
  json.url stress_url(stress, format: :json)
end
