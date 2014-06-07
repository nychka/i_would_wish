json.array!(@categories) do |category|
  json.extract! category, :id, :title, :noun, :verb, :user_id
  json.url category_url(category, format: :json)
end
