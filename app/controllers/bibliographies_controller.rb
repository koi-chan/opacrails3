class BibliographiesController < ApplicationController
  def index
  end

  def new
    @bibliography = Bibliography.new
  end

  def create
    @bibliography = Bibliography.new(bibliography_create_params)
    @bibliography.save
    redirect_to(@bibilography)
  end

  def show
  end

  private

  def bibliography_create_params
    params.
      require(:bibliography).
      permit(:isbn13, :publisher, :author, :title)
  end
end
