class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :rating
      t.text :review

      t.timestamps
    end

    add_index :user_reviews, :user_id
    add_index :user_reviews, :course_id
  end
end