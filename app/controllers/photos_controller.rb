class PhotosController < ApplicationController
  before_action :authenticate_user!

  def new
    @place = Place.find(params[:place_id])
    @photo = Photo.new
  end

  def create
    @place = Place.find(params[:place_id])
    @photo = Photo.new(user: current_user)
    @photo.update_attributes(photo_params)
    @photo.save
    @place.photos << @photo
    redirect_to place_path (@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end



  
end
