class Ctec < ActiveRecord::Base
	has_one :course, foreign_key: "course_id"
	belongs_to :course
end
