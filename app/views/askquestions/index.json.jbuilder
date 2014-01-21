json.array!(@askquestions) do |askquestion|
  json.extract! askquestion, :id, :title, :question, :subject
  json.url askquestion_url(askquestion, format: :json)
end
