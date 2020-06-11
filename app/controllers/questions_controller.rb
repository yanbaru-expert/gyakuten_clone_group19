class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice]="登録に成功しました"
      redirect_to action: :index
    else
      @questions = Question.all
      render action: :index
    end
  end

  private
  def question_params
    params.permit(:title,:detail)
  end



end
