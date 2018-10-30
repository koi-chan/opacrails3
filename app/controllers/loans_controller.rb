class LoansController < ApplicationController
  before_action :set_target_loan, only: [:show, :edit, :update]

  def index
    @loans = Loan.all
  end

  def new
    @loan = Loan.new
    @users = User.all
    @collections = Collection.all
  end

  def create
    @loan = Loan.new(loan_params)
    @loan.loan_date = Date.today
    @loan.return_date = @loan.loan_date + @loan.user.user_status.loan_days
    @loan.reloan_count = 0
    @loan.save
    redirect_to(@loan)
  end

  def show
  end

  def edit
    @users = User.all
    @collections = Collection.all
  end

  def update
    @loan.update(loan_params)
    @loan.return_date = @loan.loan_date + @loan.user.user_status.loan_days
    @loan.reloan_count += 1

    if(@loan.user.user_status.reloan < @loan.reloan_count)
      # 再貸出回数を超えているエラー
    end

    @loan.save
    redirect_to(@loan)
  end

  private

  def loan_params
    params.
      require(:loan).
      permit(:user_id, :collection_id, :loan_date, :return_date, :reloan_count)
  end

  def set_target_loan
    @loan = Loan.find(params[:id])
  end
end
