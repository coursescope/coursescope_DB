json.array!(@ctecs) do |ctec|
  json.extract! ctec, :course_ID, :description, :instr_rating, :course_rating, :learned_rating, :challenging_rating, :interest_rating, :school, :class, :reason, :interest_before
  json.url ctec_url(ctec, format: :json)
end
