class CreateCourses < ActiveRecord::Migration
  def change
    #Add id: false to eliminate default id column
    create_table :courses, id: false do |t|
      t.integer :classID
      t.text :Description
      t.string :Department
      t.integer :Number
      t.string :Time
      t.string :days
      t.integer :year

      t.timestamps
    end
    #set custom primary
    execute "ALTER TABLE courses ADD PRIMARY KEY (classID);"
  end
end
