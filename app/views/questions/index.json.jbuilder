json.array!(@questions) do |question|
  json.extract! question, :id, :head, :body
  json.url question_url(question, format: :json)
end
