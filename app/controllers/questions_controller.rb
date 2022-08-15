class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # raise
    @question = params[:question] != "" ? params[:question] : "I didn't say anything"
    @answer = ""

    if @question
      @answer = if @question == "I am going to work"
                  "Great!"
                elsif @question.end_with?("?") 
                  "Silly question, get dressed and go to work!"
                else
                  "I don't care, get dressed and go to work!"
                end
    end
  end
end
