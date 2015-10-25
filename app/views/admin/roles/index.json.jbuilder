json.array!(@roles) do |role|
  json.extract! role, :id, :user_id, :title, :status, :salary, :salary_terms
  json.url role_url(role, format: :json)
end
