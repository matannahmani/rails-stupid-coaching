class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach_answer_enhanced(params[:answer])
  end

  def coach_answer_enhanced(your_message)
    # TO   coach answer to your_message, with additional custom rules of yours!
    if your_message == "Hello Coach!"
      "I feel the motivation!, Hello Kohai!"
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif your_message == "CAN I EAT SOME PIZZA?"
      "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message == "I WOULD LOVE SOME PIZZA!"
      "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end
end
