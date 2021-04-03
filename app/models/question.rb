class Question < ApplicationRecord
  belongs_to :quiz
  validates_presence_of :question_number, :question_to_answer
end
