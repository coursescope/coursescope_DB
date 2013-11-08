class CoursesProfessors < ActiveRecord::Migration
  def change
  	create_table :courses_professors, id: false do |t|
	      	t.references :professor
    		t.references :course
    	end
  end
end
