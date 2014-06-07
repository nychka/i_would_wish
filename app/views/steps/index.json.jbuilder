json.array!(@steps) do |step|
  json.extract! step, :id, :title, :body, :start, :finish, :status, :wish_id
  json.url step_url(step, format: :json)
end
