json.array!(@courses) do |course|
  json.extract! course, :classID, :Description, :Department, :Number, :Time, :days, :year
  json.url course_url(course, format: :json)
end
