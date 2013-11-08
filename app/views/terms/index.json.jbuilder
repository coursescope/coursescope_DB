json.array!(@terms) do |term|
  json.extract! term, :title
  json.url term_url(term, format: :json)
end
