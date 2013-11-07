class Course < ActiveRecord::Base
	self.primary_key = "classID"
	has_and_belongs_to_many :professors
	has_many :ctecs
	has_many :user_reviews
	has_many :users, through :classrooms
end
