class BeerHopsController < ApplicationController
  def new
    @beerHop = BeerHop.new
  end

  def create
    @beerHop = BeerHop.new(beer_hop_params)
    @beer = Beer.find(params[:beer_id])
    @beerHop.beer = @beer

    if @beerHop.save
      redirect_to beer_path(@beer)
    else
      render :new
    end
  end

  def destroy
    @beerHop = BeerHop.find(params[:id])
    @beerHop.destroy
    redirect_to beer_path(@beerHop.beer)
  end

  private

  def beer_hop_params
    params.require(:beer_hop).permit(:beer_id, :hop_id)
  end
end
