class BibliographiesController < ApplicationController
  def index
    @bibliographies = Bibliography.all
  end

  def new
    @bibliography = Bibliography.new
  end

  def create
    @bibliography = Bibliography.new(bibliography_create_params)
    @bibliography.save
    redirect_to(@bibliography)
  end

  def show
    @bibliography = Bibliography.find(params[:id])
  end

  private

  def bibliography_create_params
    params.
      require(:bibliography).
      permit(:isbn13, :publisher, :author, :title)
  end
end
