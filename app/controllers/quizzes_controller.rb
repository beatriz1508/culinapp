
class QuizzesController < ApplicationController
  def show
    @question = Question.includes(:answers).order("RANDOM()").first
    @return_to = params[:return_to]
  end

  def result
    @question = Question.find(params[:question_id])
    @selected_answer = @question.answers.find_by(id: params[:answer_id])
    @correct_answer = @question.answers.find_by(correct: true)

    # Check correctness
    if @selected_answer == @correct_answer
      session[:quiz_result] = "correct"
    else
      session[:quiz_result] = "incorrect"
      session[:selected_answer] = @selected_answer&.content
      session[:correct_answer] = @correct_answer.content
    end

    redirect_to quiz_score_path(return_to: params[:return_to])
   end


  def score
    @result = session.delete(:quiz_result)
    @selected_answer = session.delete(:selected_answer)
    @correct_answer = session.delete(:correct_answer)
    @return_to = params[:return_to]

  end

  end
