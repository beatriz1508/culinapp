class QuizzesController < ApplicationController
  def show
    @question = QuizQuestion.includes(:quiz_answers).order("RANDOM()").first
    @return_to = params[:return_to]
  end

  def result
    @question = QuizQuestion.find(params[:quiz_question_id])
    @selected_answer = @question.quiz_answers.find_by(id: params[:quiz_answer_id])
    @correct_answer = @question.quiz_answers.find_by(correct: true)

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
