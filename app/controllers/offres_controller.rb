require 'border_patrol'

class OffresController < ApplicationController
  before_action :set_offre, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :prepare_categories
  respond_to :html

  def index
    ratio = 2
    if(params[:search].present?)
      @offres = Offre.search(params[:search])
      if(@offres.empty?)
        respond_to do |format|
          format.html{redirect_to offres_path, notice: 'Pas de résultats' }
        end
      end
    else
      @offres = Offre.all
    end

    @hash = Gmaps4rails.build_markers(@offres) do |offre, marker|
      marker.lat offre.latitude
      marker.lng offre.longitude
      marker.picture({
                       "url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
                       "width" =>  36,
                       "height" => 36})
      marker.infowindow render_to_string(:partial => "/offres/offre", :locals => {:offre => offre})
      marker.json({:descr => offre.descr})
    end
    #respond_with(@offres, @hash)
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
    params.require(:offre).permit(:title, :descr, :price, :image, :category, :longitude, :latitude, :address, :category_id)
  end
end
