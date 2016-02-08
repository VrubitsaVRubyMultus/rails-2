class Admin::ConsoleController < Admin::BaseController
  def index
    @users = User.all
    @questions = Question.all
  end
  def update
  	@user = User.find(params[:id])
    @user.update(user_params)
    @quetion = question.find(params[:id])
    @question.update(quetion_params)

    redirect_to admin_console_path
  end


end