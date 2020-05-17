class UsersController < Applicationcontroller
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "ユーザーを登録しました。"
    else
      flash.now[:alert] = "ユーザーの登録に失敗しました。"
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end


end