json.array!(@user_reviews) do |user_review|
  json.extract! user_review, :user_ID, :course_ID, :rating, :review
  json.url user_review_url(user_review, format: :json)
end
