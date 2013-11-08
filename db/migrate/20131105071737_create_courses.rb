class CreateCourses < ActiveRecord::Migration
  def change
    #Add id: false to eliminate default id column
    create_table :courses, id: false do |t|
      t.integer :course_id
      t.integer :term
      t.string :department
      t.string :title
      t.integer :number
      t.integer :section
      t.string :start
      t.string :end
      t.string :room
      t.integer :days
      t.integer :year
      t.string :status
      t.string :type


      t.timestamps
    end
    #set custom primary
    execute "ALTER TABLE courses ADD PRIMARY KEY (course_id);"
    add_index :courses, :course_id
  end
end
