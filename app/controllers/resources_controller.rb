class ResourcesController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @resources = Resource.all
  end

  def new
    @library = Library.find(params[:library_id])
    @resource = @library.resources.build
    respond_with(@resource)
  end


  def show
    @resource = Resource.find(params[:id])

  end

  def create
    @library = Library.find(params[:library_id])
    @resource = Resource.find(params[:id])
    if @resource.save!
      respond_with(@library)
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
  end

end
