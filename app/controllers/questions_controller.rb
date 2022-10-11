class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ""
    reply = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if params[:answer] == 'I am going to work'
      @answers = reply[0]
    elsif params[:answer].include? '?'
      @answers = reply[1]
    else
      @answers = reply[2]
    end
  end
end
