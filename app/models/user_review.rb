class UserReview < ActiveRecord::Base
	has_one :user, foreign_key: "user_ID"
	has_one :course, foreign_key: "course_ID"
	belongs_to :user
	belongs_to :course
end
