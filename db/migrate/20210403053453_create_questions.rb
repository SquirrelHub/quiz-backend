class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :question_number
      t.string :question_to_answer
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
