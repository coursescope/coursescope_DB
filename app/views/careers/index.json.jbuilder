json.array!(@careers) do |career|
  json.extract! career, :career, :title
  json.url career_url(career, format: :json)
end
