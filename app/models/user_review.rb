class UserReview < ActiveRecord::Base
	has_one :user, foreign_key: "user_id"
	has_one :course, foreign_key: "course_id"
	belongs_to :user
	belongs_to :course
end
