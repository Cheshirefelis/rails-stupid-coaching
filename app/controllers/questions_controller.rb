class QuestionsController < ApplicationController
  # def question

  # end

  def ask
    @question = params[:your_question]
  end

  def answer
    @question = params[:your_question]
    @answers = ["Maybe", "Ask again later", "Hrmpf", "I don't know", "42", "Hop to it already!"]
      if params[:your_question]
        @answer = @answers.sample
      end
  end

end
