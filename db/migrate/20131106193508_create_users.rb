class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :encrypted_password
      t.text :personal_information
      t.string :school
      t.string :email

      t.timestamps
    end
  end
end
