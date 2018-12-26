class BibliographiesController < ApplicationController
  before_action :set_target_bibliography, only: [:show, :edit, :update]
  before_action :set_references, only: [:new, :create, :edit, :update]

  def index
    @bibliographies = Bibliography.all
  end

  def new
    @bibliography = Bibliography.new
  end

  def create
    @bibliography = Bibliography.new(bibliography_params)
    if(@bibliography.save)
      redirect_to(@bibliography)
    else
      render(:new)
    end
  end

  def show
    @collections = Collection.where(bibliography_id: @bibliography.id)
  end

  def edit
  end

  def update
    @bibliography.update(bibliography_params)
    if(@bibliography.save)
      redirect_to(@bibliography)
    else
      render(:edit)
    end
  end

  private

  def bibliography_params
    params.
      require(:bibliography).
      permit(:isbn13, :publisher_id, :author, :title)
  end

  def set_target_bibliography
    @bibliography = Bibliography.find(params[:id])
  end

  def set_references
    @publishers = Publisher.all
  end
end
