class CreateProfessors < ActiveRecord::Migration
  def change
    #create_table :professors, :id false do |t|
    create_table :professors do |t|
      t.integer :professorID
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :Field
      t.string :website

      t.timestamps
    end
    #execute "ALTER TABLE courses ADD PRIMARY KEY (professorID);"
  end
end
