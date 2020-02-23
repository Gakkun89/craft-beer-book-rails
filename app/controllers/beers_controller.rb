class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  def index
    @beers = Beer.all
  end

  def show
  end

  def new
    @beer = Beer.new
    @hops = Hop.all
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @beer = Beer.update(beer_params)
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :edit
    end
  end

  def destroy
    @beer.destroy
    redirect_to beers_path
  end

  def results
    @beers = BAScrapeResults.search_title_scrape(params[:query])
  end

  def add_ba

  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :brewery, :abv, :style, :notes, :uscore, :bascore, :photo)
  end
end
