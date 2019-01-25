class Admin::usersController < ApplicationController
  def new
    @page_title = "Add user"
    @user = user.new
  end

  def create
    @user = user.new(user_params)
    if @user.save
      flash[:notice] = 'user Created'
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit
    @user = user.find(params[:id])
  end

  def update
    @user = user.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = 'user Updated'
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def destory
    @user = user.find(params[:id])
    @user.destroy

    flash[:notice] = 'user Removed'
    redirect_to admin_users_path
  end

  def index
    @users = user.all
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name, )
  end
end
