json.array!(@characteristics) do |characteristic|
  json.extract! characteristic, :id, :name, :symbol, :two_sided, :continuous
  json.url characteristic_url(characteristic, format: :json)
end
