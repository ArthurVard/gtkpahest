json.array!(@assets) do |asset|
  json.extract! asset, :id, :name, :amount, :note
  json.url asset_url(asset, format: :json)
end
