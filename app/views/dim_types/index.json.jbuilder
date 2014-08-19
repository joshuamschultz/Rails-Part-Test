json.array!(@dim_types) do |dim_type|
  json.extract! dim_type, :id, :name, :symbol, :two_sided, :continuous
  json.url dim_type_url(dim_type, format: :json)
end
