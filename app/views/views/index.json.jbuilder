json.array!(@views) do |view|
  json.extract! view, :id
  json.url view_url(view, format: :json)
end
