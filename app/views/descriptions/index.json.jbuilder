json.array!(@descriptions) do |description|
  json.extract! description, :overview, :course_id
  json.url description_url(description, format: :json)
end
