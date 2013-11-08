class User < ActiveRecord::Base
	has_many :user_reviews
	has_many :courses, through: :classrooms
end
