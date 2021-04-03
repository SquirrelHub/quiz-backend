class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.float :rating
      t.timestamp :quiz_updated_at

      t.timestamps
    end
  end
end
