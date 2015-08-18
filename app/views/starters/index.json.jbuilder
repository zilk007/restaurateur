json.array!(@starters) do |starter|
  json.extract! starter, :id
  json.url starter_url(starter, format: :json)
end
