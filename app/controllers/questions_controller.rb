class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = answer_coach(@question)
  end
end

private

def answer_coach(question)
  if question.downcase == "i am going to work"
    return "Great!"
  elsif question.end_with?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
