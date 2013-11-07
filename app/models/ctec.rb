class Ctec < ActiveRecord::Base
	has_one :course, foreign_key: "course_ID"
	belongs_to :course
end
