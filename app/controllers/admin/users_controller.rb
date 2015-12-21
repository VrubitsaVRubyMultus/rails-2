class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end
  def update
  	@user = User.find(params[:id])
    @user.update(user_params)

    if @user.admin?
    	flash[:notice] = 'Ты обратил друга в Админа'
      else
      	flash[:notice] = 'Ты вылечил друга от Админства'
      end

    redirect_to admin_users_path
  end

  protected

  def user_params
  	params.require(:user).permit(:admin)
  end
end