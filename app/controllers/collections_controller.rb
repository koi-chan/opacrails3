class CollectionsController < ApplicationController
  before_action :set_target_collection, only: [:show, :edit, :update]

  def index
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.save
    redirecto_to(@collection)
  end

  def show
  end

  def edit
  end

  def update
    @collection.update(collection_params)
    @collection.save
    redirect_to(@collection)
  end

  private

  def collection_params
    params.
      require().
      permit()
  end

  def set_target_collection
    @collection = Collection.find(params[:id])
  end
end
