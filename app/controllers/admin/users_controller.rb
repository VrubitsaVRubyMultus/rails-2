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
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'убиииииииииийцааааааааааа!!!!!!!!!!!!!!!!!!!1111!!11!!11!111111!!1111!!!11!!!11!!!!!!!!1111!!!!!!!!!1!!!!!адин' }
    end
  end
  def show
    @user = User.find(params[:id])
  end

  protected

  def user_params
  	params.require(:user).permit(:admin)
  end
end