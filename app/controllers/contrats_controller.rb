class ContratsController < ApplicationController
  before_action :set_contrat, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @contrats = Contrat.all
    respond_with(@contrats)
  end

  def show
    respond_with(@contrat)
  end

  def new
    @contrat = Contrat.new
    respond_with(@contrat)
  end

  def edit
  end

  def create
    @contrat = Contrat.new(contrat_params)
    @contrat.save
    respond_with(@contrat)
  end

  def update
    @contrat.update(contrat_params)
    respond_with(@contrat)
  end

  def destroy
    @contrat.destroy
    respond_with(@contrat)
  end

  private
    def set_contrat
      @contrat = Contrat.find(params[:id])
    end

    def contrat_params
      params.require(:contrat).permit(:startDate, :endDate, :offre_id, :offreur_id, :demandeur_id)
    end
end
