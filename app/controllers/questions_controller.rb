class QuestionsController < ApplicationController
  def index
    @questions = current_user.questions
    @question = Question.new # para o formulário
  end
end
