json.array!(@founders) do |founder|
  json.extract! founder, :id
  json.url founder_url(founder, format: :json)
end
