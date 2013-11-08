class Course < ActiveRecord::Base
	self.primary_key = "course_id"
	has_and_belongs_to_many :professors
	has_and_belongs_to_many :careers
	has_many :ctecs
	has_many :user_reviews
	has_many :users, through: :classrooms
	has_one :description, foreign_key: "course_id"
end
