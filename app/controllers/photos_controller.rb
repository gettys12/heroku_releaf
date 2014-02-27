class PhotosController < ApplicationController

  def index
    @photos = @library.photos.all
  end

  def new
    @library = Library.find(params[:library_id])
    @photo = @library.photos.new
  end


  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @library = Library.find(params[:library_id])
    @photo = @library.photos.new(params[:photo])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end

end
