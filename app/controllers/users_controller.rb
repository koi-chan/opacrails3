class UsersController < ApplicationController
  before_action :set_target_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user_statuses = UserStatus.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to(@user)
  end

  def show
  end

  def edit
    @user_statuses = UserStatus.all
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to(@user)
  end

  private

  def user_params
    params.
      require(:user).
      permit(:name, :user_status_id)
  end

  def set_target_user
    @user = User.find(params[:id])
  end
end
