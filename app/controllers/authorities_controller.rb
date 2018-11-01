class AuthoritiesController < ApplicationController
  before_action :set_target_authority, only: [:show, :edit, :update]

  def index
    @authorities = Authority.all
  end

  def new
    @authority = Authority.new
  end

  def create
    @authority = Authority.new(authority_params)
    @authority.save
    redirect_to(@authority)
  end

  def show
  end

  def edit
  end

  def update
    @authority.update(authority_params)
    @authority.save
    redirect_to(@authority)
  end

  private

  def authority_params
    params.
      require(:authority).
      permit(:name, :name_kana, :authority_type_id, :ndl_authorities_id, :see_reference, :see_also_reference, :authority_see_reference_id, :hypernym, :hyponym, :related, :start_year, :end_year, :major_subject, :history, :source, :memo)
  end

  def set_target_authority
    @authority = Authority.find(params[:id])
  end
end
