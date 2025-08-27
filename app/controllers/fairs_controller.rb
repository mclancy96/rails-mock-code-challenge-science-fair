class FairsController < ApplicationController
  def index
    @fairs = Fair.all
  end

  def show
    @fair = Fair.find(params[:id])
  end

  def new
    @fair = Fair.new
  end

  def create
    @fair = Fair.create(fair_params)
    redirect_to @fair
  end

  private

  def fair_params
    params.require(:fair).permit(:name, :address)
  end
end
