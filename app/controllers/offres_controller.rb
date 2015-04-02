class OffresController < ApplicationController
  before_action :set_offre, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :prepare_categories
  respond_to :html

  def index
    @offres = Offre.search(params[:search])
    respond_with(@offres)
  end

  def show
    respond_with(@offre)
  end

  def new
    @offre = current_user.offres.new
    respond_with(@offre)
  end

  def edit
  end

  def create
    @offre = current_user.offres.new(offre_params)
    @offre.save
    respond_with(@offre)
  end

  def update
    @offre.update(offre_params)
    respond_with(@offre)
  end

  def destroy
    @offre.destroy
    respond_with(@offre)
  end

  def mine
    @offres = current_user.offres
    respond_with(@offres)
  end

  private
  def set_offre
    @offre = Offre.find(params[:id])
  end

  def prepare_categories
    @categories = Category.all
  end

  def offre_params
    params.require(:offre).permit(:title, :descr, :price, :image)
  end
end
