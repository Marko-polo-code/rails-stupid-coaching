class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @message = params[:question]
    if @message == 'I am going to work'
      @answer_message = 'Great!'
    elsif @message.include? '?'
      @answer_message = 'Silly question, get dressed and go to work!'
    else
      @answer_message = "I don't care, get dressed and go to work!"
    end
  end
end
