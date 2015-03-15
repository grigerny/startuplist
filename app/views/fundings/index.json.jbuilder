json.array!(@fundings) do |funding|
  json.extract! funding, :id
  json.url funding_url(funding, format: :json)
end
