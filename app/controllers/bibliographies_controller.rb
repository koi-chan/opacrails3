class BibliographiesController < ApplicationController
  before_action :set_target_bibliography, only: [:show, :edit, :update]

  def index
    @bibliographies = Bibliography.all
  end

  def new
    @bibliography = Bibliography.new
  end

  def create
    @bibliography = Bibliography.new(bibliography_params)
    @bibliography.save
    redirect_to(@bibliography)
  end

  def show
  end

  def edit
  end

  def update
    @bibliography.update(bibliography_params)
    @bibliography.save
    redirect_to(@bibliography)
  end

  private

  def bibliography_params
    params.
      require(:bibliography).
      permit(:isbn13, :publisher, :author, :title)
  end

  def set_target_bibliography
    @bibliography = Bibliography.find(params[:id])
  end
end
