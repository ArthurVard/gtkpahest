json.array!(@items) do |item|
  json.extract! item, :id, :room_id, :asset_id, :qanak
  json.url item_url(item, format: :json)
end
