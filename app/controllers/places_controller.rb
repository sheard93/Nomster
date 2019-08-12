class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def index
    @places = Place.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
  end

  def new
    @place = Place.new
  end

end
