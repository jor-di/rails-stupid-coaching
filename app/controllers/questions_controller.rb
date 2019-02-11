class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @current_question = params[:question]
    @answer = if @current_question == 'I am going to work'
                'Great!'
              elsif @current_question.match?(/\?$/)
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
