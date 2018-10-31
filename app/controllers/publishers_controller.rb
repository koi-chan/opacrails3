class PublishersController < ApplicationController
  before_action :set_target_publisher, only: [:show, :edit, :update]

  def index
    @publishers = Publisher.all
  end

  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    @publisher.save
    redirect_to(@publisher)
  end

  def show
  end

  def edit
  end

  def update
    @publisher.update(publisher_params)
    @publisher.save
    redirect_to(@publisher)
  end

  private

  def publisher_params
    params.
      require(:publisher).
      permit(:name, :place, :isbn_code)
  end

  def set_target_publisher
    @publisher = Publisher.find(params[:id])
  end
end
