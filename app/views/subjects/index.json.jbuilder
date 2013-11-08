json.array!(@subjects) do |subject|
  json.extract! subject, :subject, :title
  json.url subject_url(subject, format: :json)
end
