class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :overview
      t.integer :course_id

      t.timestamps
    end
    add_index :descriptions, :course_id
  end
end
