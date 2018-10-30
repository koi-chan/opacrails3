class LoanHistoriesController < ApplicationController
  def index
    @loans = LoanHistory.all
  end

  def show
    @loan = LoanHistory.find(params[:id])
  end
end
