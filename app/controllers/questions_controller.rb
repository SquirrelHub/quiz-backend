class QuestionsController < ApplicationController
  before_action :set_quiz
  def index
    @questions = @quiz.questions
    render json:@questions
  end

  def show
    @question = @quiz.questions.find(params[:id])
    render json:@question
  end

  def create
    @question = @quiz.questions.create!(question_params)
    render json:@question
  end

  private
  def question_params
    params.permit(:question_number, :question_to_answer)
  end

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
