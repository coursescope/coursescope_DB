class CreateProfessorsCourses < ActiveRecord::Migration
  def change
    create_table :professors_courses, id: false do |t|
    	t.integer :professor
    	t.integer :course
    end
  end
end
