json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :bubble, :dim, :tolerance_less, :tolerance_plus, :dim_type, :part_id
  json.url requirement_url(requirement, format: :json)
end
