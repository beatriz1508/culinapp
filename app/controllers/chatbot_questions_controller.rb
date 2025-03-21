class ChatbotQuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = current_user.chatbot_questions
    @question = ChatbotQuestion.new
  end

  def create
    @questions = current_user.chatbot_questions
    @question = ChatbotQuestion.new(question_params)
    @question.user = current_user

    if @question.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:questions, partial: "chatbot_questions/question", locals: { question: @question })
        end
        format.html { redirect_to chatbot_questions_path }
      end
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def question_params
    params.require(:chatbot_question).permit(:user_question)
  end
end
