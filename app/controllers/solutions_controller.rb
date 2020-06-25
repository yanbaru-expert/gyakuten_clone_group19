class SolutionsController < ApplicationController
  
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    if @solution.save
      flash[:notice]="回答を投稿しました"
      redirect_to question_path(@question.id)
    else
      flash[:alert]="回答を入力してください"
      @solutions = @question.solutions
      render "questions/show"
    end
  end

  private
  def solution_params
    params.require(:solution).permit(:content)
  end

end 