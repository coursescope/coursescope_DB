class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :career
      t.string :title

      t.timestamps
    end
  end
end
