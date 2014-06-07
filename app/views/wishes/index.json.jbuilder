json.array!(@wishes) do |wish|
  json.extract! wish, :id, :title, :start, :finish, :status, :body, :category_id
  json.url wish_url(wish, format: :json)
end
