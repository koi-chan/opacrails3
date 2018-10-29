class UserStatusesController < ApplicationController
  before_action :set_target_user_status, only: [:show, :edit, :update]

  def index
    @user_statuses = UserStatus.all
  end

  def new
    @user = UserStatus.new
  end

  def create
    @user_status = UserStatus.new(user_status_params)
    @user_status.save
    redirect_to(@user_status)
  end

  def show
  end

  def edit
  end

  def update
    @user_status.update(user_status_params)
    @user_status.save
    redirect_to(@user_status)
  end

  private

  def user_status_params
    params.
      require(:user_status).
      permit(:name, :loan_days)
  end

  def set_target_user_status
    @user_status = UserStatus.find(params[:id])
  end
end
