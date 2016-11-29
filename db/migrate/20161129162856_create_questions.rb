class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :option_1
      t.string :option_2
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
