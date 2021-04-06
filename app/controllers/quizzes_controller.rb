class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    render json: @quizzes
  end

  def create
    @quiz = Quiz.create!(create_params)
    render json:@quiz
  end

  def update
    @quiz = Quiz.find(params[:id])
    if params.has_key?(:rating) == false
      params[:quiz_updated_at] = DateTime.now
    else
      params[:quiz_updated_at] = @quiz[:quiz_updated_at]
    end
    @quiz.update!(update_params)

    render json:@quiz
  end

  def show
    @quiz = Quiz.find(params[:id])
    render json:@quiz
  end

  private
  def create_params
    params.permit(:name)
  end

  def update_params
    params.permit(:name, :rating, :quiz_updated_at)
  end
end
