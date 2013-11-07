class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.integer :user_ID
      t.integer :course_ID
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
