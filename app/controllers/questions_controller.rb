class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = 'hello'

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # Si le message est I am going to work, le coach répondra Great!.
    # Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
    # Sinon, le coach répondra I don't care, get dressed and go to work!.
  end
end
