json.array!(@keys) do |key|
  json.extract! key, :id, :Company, :Description, :Number, :Checkout, :Checkin, :create_at, :update_at
  json.url key_url(key, format: :json)
end
