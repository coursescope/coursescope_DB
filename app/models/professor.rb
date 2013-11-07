class Professor < ActiveRecord::Base
	#self.primary_key = "professorID"
	has_and_belongs_to_many :courses

end
