class CreateCtecs < ActiveRecord::Migration
  def change
    create_table :ctecs do |t|
      t.integer :course_ID
      t.text :description
      t.integer :instr_rating
      t.integer :course_rating
      t.integer :learned_rating
      t.integer :challenging_rating
      t.integer :interest_rating
      t.string :school
      t.string :class
      t.string :reason
      t.integer :interest_before

      t.timestamps
    end
  end
end
