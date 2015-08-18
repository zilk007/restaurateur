json.array!(@vips) do |vip|
  json.extract! vip, :id
  json.url vip_url(vip, format: :json)
end
