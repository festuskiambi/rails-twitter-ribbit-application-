json.array!(@ribbits) do |ribbit|
  json.extract! ribbit, :id, :content, :user_id
  json.url ribbit_url(ribbit, format: :json)
end
