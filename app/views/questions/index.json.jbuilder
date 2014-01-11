json.array!(@questions) do |question|
  json.extract! question, :id, :chapter_no, :chapter_name, :questions
  json.url question_url(question, format: :json)
end
