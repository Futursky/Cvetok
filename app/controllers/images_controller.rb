class ImagesController < ApplicationController
  
  def create
    @image = Image.create( image_params )
  end

  def new
    @image = Image.new
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def image_params
    params.require(:image).permit(:photo)
  end
end
