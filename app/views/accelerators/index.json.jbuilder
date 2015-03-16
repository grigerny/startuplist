json.array!(@accelerators) do |accelerator|
  json.extract! accelerator, :id
  json.url accelerator_url(accelerator, format: :json)
end
