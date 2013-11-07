json.array!(@classrooms) do |classroom|
  json.extract! classroom, :user_ID, :course_ID
  json.url classroom_url(classroom, format: :json)
end
