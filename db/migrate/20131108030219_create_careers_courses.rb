class CreateCareersCourses < ActiveRecord::Migration
  def change
    create_table :careers_courses, id: false do |t|
    	t.integer :career
    	t.integer :course
    end
  end
end
