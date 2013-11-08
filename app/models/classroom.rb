class Classroom < ActiveRecord::Base
	belongs_to :course
	belongs_to :user
	has_one :user, foreign_key: "user_id"
	has_one :course, foreign_key: "course_id"
end
