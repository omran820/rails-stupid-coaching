class QuestionsController < ApplicationController
  def question
  end
  def answer
    @question = params[:user]
    if @question == nil
      @answer = "ask something mz friend"
    else
      if @question.include? "I am going to work"
        @answer = "Great!"
      elsif @question.include?("?")
        @answer = "get dressed and go to work"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end 
end
