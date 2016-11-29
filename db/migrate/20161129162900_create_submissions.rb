class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :question_id
      t.integer :user_id
      t.string :selection

      t.timestamps

    end
  end
end
