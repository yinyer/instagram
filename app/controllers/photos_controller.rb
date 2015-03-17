class PhotosController < ApplicationController
  before_action :authenticate_user!

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)

    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @photo = Photo.find(params[:id])    
  end

protected

  def photo_params
    params.require(:photo).permit(:title, :comment, :asset)
  end
end
